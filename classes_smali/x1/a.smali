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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx1/a;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "cn.wps.moffice.service.lite.action"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x20000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_51

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_51

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    if-eqz v2, :cond_23

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v3, :cond_23

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v4, "cn.wps.moffice_eng.xiaomi.lite"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const-string v3, "cn.wps.moffice.service.lite.MOfficeLiteService"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    const/4 v2, 0x1

    goto :goto_4e

    :cond_4d
    move v2, v1

    :goto_4e
    if-eqz v2, :cond_23

    move v1, v2

    :cond_51
    iput-boolean v1, p0, Lx1/a;->b:Z

    invoke-static {p1}, La/b;->P(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lx1/a;->c:Z

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lx1/a;
    .registers 3

    const-class v0, Lx1/a;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lx1/a;->d:Lx1/a;

    if-nez v1, :cond_e

    new-instance v1, Lx1/a;

    invoke-direct {v1, p0}, Lx1/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lx1/a;->d:Lx1/a;

    :cond_e
    sget-object p0, Lx1/a;->d:Lx1/a;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v0, "snapshot/"

    invoke-static {v0, p0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_14
    return-object v0
.end method


# virtual methods
.method public final c(Lx1/b;)Lcom/bumptech/glide/load/Key;
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    iget-boolean v1, p0, Lx1/a;->c:Z

    if-eqz v1, :cond_1a

    new-instance v0, Lz1/a;

    invoke-virtual {p1}, Lx1/b;->getFileUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Lx1/b;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lx1/b;->getResolution()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lz1/a;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1a
    iget-boolean v1, p0, Lx1/a;->b:Z

    if-eqz v1, :cond_2f

    new-instance v0, Ly1/a;

    invoke-virtual {p1}, Lx1/b;->getInputPathStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lx1/b;->getOutPathStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lx1/b;->getResolution()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Ly1/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    return-object v0
.end method
