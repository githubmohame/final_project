# Generated by Django 4.1.3 on 2022-12-02 13:51

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('digital_livestock', '0001_initial'),
    ]

    operations = [
        migrations.RenameField(
            model_name='village',
            old_name='village',
            new_name='city_id',
        ),
    ]
