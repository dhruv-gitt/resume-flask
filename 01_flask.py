from datetime import datetime
import os
from werkzeug.utils import secure_filename
import flask
import json
import math 
from flask_mail import Mail
from flask import Flask, render_template, request, session, redirect
from flask_sqlalchemy import SQLAlchemy


with open(r"C:\Users\lenovo\Desktop\python\Flask\config.json", "r") as c:
    params = json.load(c) ["params"]

local_server=True
app= Flask(__name__)
app.secret_key = "super-secret-chabi"
app.config['UPLOAD_FOLDER'] = params['upload_location']
app.config.update(
    MAIL_SERVER = 'smtp.gmail.com',
    MAIL_PORT = '465',
    MAIL_USE_SSL = True,
    MAIL_USERNAME = params['gm_username'],
    MAIL_PASSWORD = params['gm_pass']
)
mail = Mail(app)

if (local_server):
    app.config['SQLALCHEMY_DATABASE_URI'] = params["local_uri"]
else:
    app.config['SQLALCHEMY_DATABASE_URI'] = params["prod_uri"]
    
db = SQLAlchemy(app)


mail = Mail(app)

class Contacts(db.Model):
    Sno = db.Column(db.Integer, primary_key=True)
    Name = db.Column(db.String(80), nullable=False)
    Message = db.Column(db.String(120), nullable=False)
    Date = db.Column(db.String(12), nullable=False)
    Email = db.Column(db.String(20), nullable=False)
    Subject = db.Column(db.String(20), nullable=False)

class Blog(db.Model):
    sno = db.Column(db.Integer, primary_key=True)
    sno2 = db.Column(db.Integer, primary_key=True)
    tittle = db.Column(db.String(80), nullable=False)
    slug = db.Column(db.String(30), nullable=False)
    content = db.Column(db.String(100), nullable=False)
    Date = db.Column(db.String(12), nullable=False)
    img = db.Column(db.String(40), nullable=True)
    tittle2 = db.Column(db.String(80), nullable=False)
    slug2 = db.Column(db.String(30), nullable=False)
    content2 = db.Column(db.String(100), nullable=False)
    Date2 = db.Column(db.String(12), nullable=False)
    img2 = db.Column(db.String(40), nullable=True)
    
    

@app.route("/")
def home():
    return render_template("index.html", params=params)

@app.route("/blog2/<string:blog_slug>", methods = ['GET'])
def blog_route(blog_slug):
    blog= Blog.query.filter_by(slug=blog_slug).first()
    return render_template("blog2.html", params=params, blog=blog )

@app.route("/blog3/<string:blog_slug>", methods = ['GET'])
def blog_route2(blog_slug):
    blog= Blog.query.filter_by(slug2=blog_slug).first()
    return render_template("blog3.html", params=params, blog=blog )

@app.route("/about")
def about():
    return render_template("about.html", params=params)

@app.route("/dashboard" , methods = ['GET', 'POST'])
def dashboard():
    if "user" in session and session['user']==params['admin_user']:
        posts = Blog.query.all()
        return render_template("dashboard.html", params=params, posts=posts)

    if request.method=="POST":
        username = request.form.get("uname")
        userpass = request.form.get("upass")
        if username==params['admin_user'] and userpass==params['admin_password']:
            # set the session variable
            session['user']=username
            posts = Blog.query.all()
            return render_template("dashboard.html", params=params, posts=posts)
    else:
        return render_template("login.html", params=params)


@app.route("/resume")
def resume():
    return render_template("resume.html", params=params)

@app.route("/edit/<string:sno>" , methods = ["GET", "POST"])
def edit(sno):
    if "user" in session and session['user']==params['admin_user']:
        if request.method=="POST":
            box_title = request.form.get('tittle')
            snoo = request.form.get('snoo')
            snoo2 = request.form.get('snoo2')
            slug = request.form.get('slug')
            img = request.form.get('img')
            img2 = request.form.get('img2')
            content = request.form.get('content')
            box_title2 = request.form.get('tittle2')
            slug2 = request.form.get('slug2')
            content2 = request.form.get('content2')
            date = datetime.now()
            Date = datetime.now()
        
            if sno=='0':
                post = Blog(tittle=box_title,sno=snoo,sno2=snoo2 ,img=img, img2=img2, tittle2=box_title2, slug=slug, slug2=slug2, content=content, content2=content2, Date=date, Date2=Date  )
                db.session.add(post)
                db.session.commit()
            else:
                post=Blog.query.filter_by(sno=sno).first()
                post.tittle=box_title
                post.img=img
                post.sno=snoo
                post.sno2=snoo2
                post.img2=img2
                post.tittle2=box_title2
                post.slug=slug
                post.slug2=slug2
                post.content=content
                post.content2=content2
                post.Date=date
                post.Date2=Date
                db.session.commit()
                return redirect(sno)
        post=Blog.query.filter_by(sno=sno).first()        
        return render_template('edit.html', params=params, post=post, sno=sno) 


@app.route("/blog")
def blogg():
    posts= Blog.query.filter_by().all()
    last = math.ceil(len(posts)/int(params['no_of_posts']))
    page = request.args.get('page')
    if (not str(page).isnumeric()):
        page = 1
    page = int(page)
    posts = posts[(page-1)*int(params['no_of_posts']):(page-1)*int(params['no_of_posts'])+ int(params['no_of_posts'])]
    if page==1:
        prev = "#"
        next = "/blog?page="+ str(page+1)
    elif page==last:
        prev = "/blog?page="+ str(page-1)
        next = "#"
    else:
        prev = "/blog?page="+ str(page-1)
        next = "/blog?page="+ str(page+1)
    
    return render_template("blog.html", params=params, posts=posts, prev=prev, next=next)

@app.route("/delete/<string:sno>" , methods=['GET', 'POST'])
def delete(sno):
    if "user" in session and session['user']==params['admin_user']:
        post = Blog.query.filter_by(sno=sno).first()
        db.session.delete(post)
        db.session.commit()
    return redirect("/dashboard")

@app.route('/logout')
def logout():
    session.pop('user')
    return redirect('/dashboard')

@app.route("/uploader", methods = ["GET", "POST"])
def uploader():
    if "user" in session and session['user']==params['admin_user']:
        if request.method=="POST":
            f = request.files['file1']
            f.save(os.path.join(app.config['UPLOAD_FOLDER'], secure_filename(f.filename)))
            return "Uploaded successfully!"
    



@app.route("/contact", methods = ['GET', 'POST'])
def contact():
    if(request.method=='POST'):
        Name = request.form.get('name')
        Email = request.form.get('email')
        Subject = request.form.get('subject')
        Message = request.form.get('message')
        entry = Contacts(Name=Name, Subject = Subject, Message = Message, Date= datetime.now(),Email = Email )
        db.session.add(entry)
        db.session.commit()
        mail.send_message('New message from ' + Name + "("+ Email +")",
                          sender=Email,
                          recipients = [params['gm_username']],
                          body = Subject + "\n" + Message
                          )
    return render_template("contact.html", params=params)

@app.route("/skills")
def skills():
    return render_template("skills.html", params=params)


# app.run(debug=True)

if __name__ == "__main__":
   app.run(host="0.0.0.0", port=5000, debug=True)