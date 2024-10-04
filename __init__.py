from flask import Flask 
import pymysql.cursors
from config import config

def create_app():
    app = Flask(__name__)
    app.config.from_object(config)

    connection = pymysql.connect(
        host=app.config['MYSQL_HOST']
        user=app.config['MYSQL_USER']
        password=app.config['MYSQL_DB']
        cursorclass=pymysql.cursors.DictCursor
    )

    from app.controllers.main_controller import main_bp
    from app.controllers.main_controller import user_bp

    app.register_b