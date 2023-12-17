.class public final Ld0/m$a;
.super Ljava/lang/Object;
.source "Person.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld0/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public static a(Landroid/os/PersistableBundle;)Ld0/m;
    .registers 3

    .line 1
    new-instance v0, Ld0/m$c;

    .line 3
    invoke-direct {v0}, Ld0/m$c;-><init>()V

    .line 6
    const-string v1, "name"

    .line 8
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    iput-object v1, v0, Ld0/m$c;->a:Ljava/lang/CharSequence;

    .line 14
    const-string v1, "uri"

    .line 16
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    iput-object v1, v0, Ld0/m$c;->c:Ljava/lang/String;

    .line 22
    const-string v1, "key"

    .line 24
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    iput-object v1, v0, Ld0/m$c;->d:Ljava/lang/String;

    .line 30
    const-string v1, "isBot"

    .line 32
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 35
    move-result v1

    .line 36
    iput-boolean v1, v0, Ld0/m$c;->e:Z

    .line 38
    const-string v1, "isImportant"

    .line 40
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 43
    move-result p0

    .line 44
    iput-boolean p0, v0, Ld0/m$c;->f:Z

    .line 46
    new-instance p0, Ld0/m;

    .line 48
    invoke-direct {p0, v0}, Ld0/m;-><init>(Ld0/m$c;)V

    .line 51
    return-object p0
.end method

.method public static b(Ld0/m;)Landroid/os/PersistableBundle;
    .registers 4

    .line 1
    new-instance v0, Landroid/os/PersistableBundle;

    .line 3
    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 6
    iget-object v1, p0, Ld0/m;->a:Ljava/lang/CharSequence;

    .line 8
    if-eqz v1, :cond_e

    .line 10
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 v1, 0x0

    .line 16
    :goto_f
    const-string v2, "name"

    .line 18
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v1, p0, Ld0/m;->c:Ljava/lang/String;

    .line 23
    const-string v2, "uri"

    .line 25
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object v1, p0, Ld0/m;->d:Ljava/lang/String;

    .line 30
    const-string v2, "key"

    .line 32
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-boolean v1, p0, Ld0/m;->e:Z

    .line 37
    const-string v2, "isBot"

    .line 39
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 42
    iget-boolean p0, p0, Ld0/m;->f:Z

    .line 44
    const-string v1, "isImportant"

    .line 46
    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 49
    return-object v0
.end method
