DATABASES = {
    'default': {
        'ENGINE': 'sql_server.pyodbc',
        'NAME': 'tu_basededatos',
        'USER': 'tu_usuario',
        'PASSWORD': 'tu_contraseña',
        'HOST': 'tu_servidor',
        'PORT': 'tu_puerto',  # Por lo general, 1433 es el puerto predeterminado de SQL Server
        'OPTIONS': {
            'driver': 'ODBC Driver 17 for SQL Server',
        },
    },
}
