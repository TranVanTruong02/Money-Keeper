# Generated by Django 5.0.1 on 2024-01-28 04:12

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='user',
            name='auth_token',
            field=models.CharField(default='', max_length=255),
        ),
    ]
