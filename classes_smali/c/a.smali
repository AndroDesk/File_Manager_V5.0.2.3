.class public abstract Lc/a;
.super Landroid/os/Binder;
.source "OfficeLiteCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "cn.wps.moffice.service.lite.OfficeLiteCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8

    const/4 v0, 0x1

    const-string v1, "cn.wps.moffice.service.lite.OfficeLiteCallback"

    if-eq p1, v0, :cond_13

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_f

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :cond_f
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :cond_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1e

    move p1, v0

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    move-object p2, p0

    check-cast p2, Lb/a$a;

    iget-object p4, p2, Lb/a$a;->b:Lb/a;

    iget-boolean p4, p4, Lb/a;->d:Z

    if-nez p4, :cond_44

    if-eqz p1, :cond_44

    iget-object p1, p2, Lb/a$a;->b:Lb/a;

    iget-object p1, p1, Lb/a;->a:Ly1/a;

    iget-object p1, p1, Ly1/a;->c:Ljava/lang/String;

    new-instance p4, Ljava/io/File;

    invoke-direct {p4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_35
    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_44

    iget-object p1, p2, Lb/a$a;->b:Lb/a;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p1, Lb/a;->c:Ljava/io/InputStream;
    :try_end_44
    .catch Ljava/io/FileNotFoundException; {:try_start_35 .. :try_end_44} :catch_44

    :catch_44
    :cond_44
    iget-object p1, p2, Lb/a$a;->b:Lb/a;

    iget-object p1, p1, Lb/a;->c:Ljava/io/InputStream;

    if-eqz p1, :cond_50

    iget-object p2, p2, Lb/a$a;->a:Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;

    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onDataReady(Ljava/lang/Object;)V

    goto :goto_5a

    :cond_50
    iget-object p1, p2, Lb/a$a;->a:Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;

    new-instance p2, La/a/a/c;

    invoke-direct {p2}, La/a/a/c;-><init>()V

    invoke-interface {p1, p2}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onLoadFailed(Ljava/lang/Exception;)V

    :goto_5a
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
