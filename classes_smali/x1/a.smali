.class public final Lx1/a;
.super Ljava/lang/Object;
.source "WpsGlideHelper.java"


# static fields
.field public static d:Lx1/a;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Z

.field public c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lx1/a;->a:Landroid/content/Context;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Landroid/content/Intent;

    .line 12
    const-string v2, "cn.wps.moffice.service.lite.action"

    .line 14
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17
    const/high16 v2, 0x20000

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x0

    .line 24
    if-eqz v0, :cond_51

    .line 26
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 29
    move-result v2

    .line 30
    if-lez v2, :cond_51

    .line 32
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 35
    move-result-object v0

    .line 36
    :cond_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_51

    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 48
    if-eqz v2, :cond_23

    .line 50
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 52
    if-eqz v3, :cond_23

    .line 54
    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 56
    const-string v4, "cn.wps.moffice_eng.xiaomi.lite"

    .line 58
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_4d

    .line 64
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 66
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 68
    const-string v3, "cn.wps.moffice.service.lite.MOfficeLiteService"

    .line 70
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_4d

    .line 76
    const/4 v2, 0x1

    .line 77
    goto :goto_4e

    .line 78
    :cond_4d
    move v2, v1

    .line 79
    :goto_4e
    if-eqz v2, :cond_23

    .line 81
    move v1, v2

    .line 82
    :cond_51
    iput-boolean v1, p0, Lx1/a;->b:Z

    .line 84
    invoke-static {p1}, La/b;->P(Landroid/content/Context;)Z

    .line 87
    move-result p1

    .line 88
    iput-boolean p1, p0, Lx1/a;->c:Z

    .line 90
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lx1/a;
    .registers 3

    .line 1
    const-class v0, Lx1/a;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lx1/a;->d:Lx1/a;

    .line 6
    if-nez v1, :cond_e

    .line 8
    new-instance v1, Lx1/a;

    .line 10
    invoke-direct {v1, p0}, Lx1/a;-><init>(Landroid/content/Context;)V

    .line 13
    sput-object v1, Lx1/a;->d:Lx1/a;

    .line 15
    :cond_e
    sget-object p0, Lx1/a;->d:Lx1/a;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    .line 17
    monitor-exit v0

    .line 18
    return-object p0

    .line 19
    :catchall_12
    move-exception p0

    .line 20
    monitor-exit v0

    .line 21
    throw p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_14

    .line 15
    const-string v0, "snapshot/"

    .line 17
    invoke-static {v0, p0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    :cond_14
    return-object v0
.end method


# virtual methods
.method public final c(Lx1/b;)Lcom/bumptech/glide/load/Key;
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_4

    .line 4
    return-object v0

    .line 5
    :cond_4
    iget-boolean v1, p0, Lx1/a;->c:Z

    .line 7
    if-eqz v1, :cond_1a

    .line 9
    new-instance v0, Lz1/a;

    .line 11
    invoke-virtual {p1}, Lx1/b;->getFileUri()Landroid/net/Uri;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lx1/b;->getMimeType()Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {p1}, Lx1/b;->getResolution()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    invoke-direct {v0, v1, v2, p1}, Lz1/a;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-object v0

    .line 27
    :cond_1a
    iget-boolean v1, p0, Lx1/a;->b:Z

    .line 29
    if-eqz v1, :cond_2f

    .line 31
    new-instance v0, Ly1/a;

    .line 33
    invoke-virtual {p1}, Lx1/b;->getInputPathStr()Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p1}, Lx1/b;->getOutPathStr()Ljava/lang/String;

    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {p1}, Lx1/b;->getResolution()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    invoke-direct {v0, v1, v2, p1}, Ly1/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_2f
    return-object v0
.end method
