.class public abstract Lc/a;
.super Landroid/os/Binder;
.source "OfficeLiteCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    const-string v0, "cn.wps.moffice.service.lite.OfficeLiteCallback"

    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 9
    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "cn.wps.moffice.service.lite.OfficeLiteCallback"

    .line 4
    if-eq p1, v0, :cond_13

    .line 6
    const v2, 0x5f4e5446

    .line 9
    if-eq p1, v2, :cond_f

    .line 11
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_f
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    return v0

    .line 20
    :cond_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_1e

    .line 29
    move p1, v0

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    const/4 p1, 0x0

    .line 32
    :goto_1f
    move-object p2, p0

    .line 33
    check-cast p2, Lb/a$a;

    .line 35
    iget-object p4, p2, Lb/a$a;->b:Lb/a;

    .line 37
    iget-boolean p4, p4, Lb/a;->d:Z

    .line 39
    if-nez p4, :cond_44

    .line 41
    if-eqz p1, :cond_44

    .line 43
    iget-object p1, p2, Lb/a$a;->b:Lb/a;

    .line 45
    iget-object p1, p1, Lb/a;->a:Ly1/a;

    .line 47
    iget-object p1, p1, Ly1/a;->c:Ljava/lang/String;

    .line 49
    new-instance p4, Ljava/io/File;

    .line 51
    invoke-direct {p4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    :try_start_35
    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_44

    .line 60
    iget-object p1, p2, Lb/a$a;->b:Lb/a;

    .line 62
    new-instance v1, Ljava/io/FileInputStream;

    .line 64
    invoke-direct {v1, p4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 67
    iput-object v1, p1, Lb/a;->c:Ljava/io/InputStream;
    :try_end_44
    .catch Ljava/io/FileNotFoundException; {:try_start_35 .. :try_end_44} :catch_44

    .line 69
    :catch_44
    :cond_44
    iget-object p1, p2, Lb/a$a;->b:Lb/a;

    .line 71
    iget-object p1, p1, Lb/a;->c:Ljava/io/InputStream;

    .line 73
    if-eqz p1, :cond_50

    .line 75
    iget-object p2, p2, Lb/a$a;->a:Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;

    .line 77
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onDataReady(Ljava/lang/Object;)V

    .line 80
    goto :goto_5a

    .line 81
    :cond_50
    iget-object p1, p2, Lb/a$a;->a:Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;

    .line 83
    new-instance p2, La/a/a/c;

    .line 85
    invoke-direct {p2}, La/a/a/c;-><init>()V

    .line 88
    invoke-interface {p1, p2}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onLoadFailed(Ljava/lang/Exception;)V

    .line 91
    :goto_5a
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    return v0
.end method
