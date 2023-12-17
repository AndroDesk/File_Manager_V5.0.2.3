.class public abstract Ld/a;
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

    const-string v0, "cn.wps.moffice.service.work.snapshot.OfficeLiteCallback"

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

    const-string v1, "cn.wps.moffice.service.work.snapshot.OfficeLiteCallback"

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_2e

    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    goto :goto_2f

    :cond_2e
    const/4 p2, 0x0

    :goto_2f
    move-object p4, p0

    check-cast p4, Le/a$a;

    iget-object v1, p4, Le/a$a;->b:Le/a;

    iget-boolean v1, v1, Le/a;->e:Z

    if-nez v1, :cond_50

    if-eqz p1, :cond_50

    const-string p1, "outputUri"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    :try_start_42
    iget-object p2, p4, Le/a$a;->b:Le/a;

    iget-object v1, p2, Le/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p2, Le/a;->d:Ljava/io/InputStream;
    :try_end_50
    .catch Ljava/io/FileNotFoundException; {:try_start_42 .. :try_end_50} :catch_50

    :catch_50
    :cond_50
    iget-object p1, p4, Le/a$a;->b:Le/a;

    iget-object p1, p1, Le/a;->d:Ljava/io/InputStream;

    if-eqz p1, :cond_5c

    iget-object p2, p4, Le/a$a;->a:Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;

    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onDataReady(Ljava/lang/Object;)V

    goto :goto_66

    :cond_5c
    iget-object p1, p4, Le/a$a;->a:Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;

    new-instance p2, La/a/a/c;

    invoke-direct {p2}, La/a/a/c;-><init>()V

    invoke-interface {p1, p2}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onLoadFailed(Ljava/lang/Exception;)V

    :goto_66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
