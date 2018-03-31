# -*- coding:UTF-8 -*-

def get_auth_url():
    weibo_auth_url = 'https://api.weibo.com/oauth2/authorize'
    redirect_url = 'http://46.92.87.172.:8000/complete/weibo/'
    auth_url = weibo_auth_url+'?client_id={client_id}&redirect_uri={re_url}'.format(client_id=237999617,re_url=redirect_url)

def get_user_info(access_token='',uid=''):
    user_url = ''

def get_access_token(code='9089fd6sa7fhds7a8g6sda9'):
    access_token_url = 'https://api.weibo.com/oauth2/access_token'
    import requests
    re_dict = requests.post(access_token_url,data={
        'client_id':'',
        'client_secret':'',
        'grant_type':'',
        'code':code,
        'redirect_uri':'',
    })


if __name__ == '__main__':
    get_auth_url()
