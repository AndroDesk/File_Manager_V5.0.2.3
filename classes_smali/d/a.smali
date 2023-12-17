.class public abstract Ld/a;
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
    const-string v0, "cn.wps.moffice.service.work.snapshot.OfficeLiteCallback"

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
    const-string v1, "cn.wps.moffice.service.work.snapshot.OfficeLiteCallback"

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 35
    move-result p4

    .line 36
    if-eqz p4, :cond_2e

    .line 38
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 40
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 43
    move-result-object p2

    .line 44
    check-cast p2, Landroid/os/Bundle;

    .line 46
    goto :goto_2f

    .line 47
    :cond_2e
    const/4 p2, 0x0

    .line 48
    :goto_2f
    move-object p4, p0

    .line 49
    check-cast p4, Le/a$a;

    .line 51
    iget-object v1, p4, Le/a$a;->b:Le/a;

    .line 53
    iget-boolean v1, v1, Le/a;->e:Z

    .line 55
    if-nez v1, :cond_50

    .line 57
    if-eqz p1, :cond_50

    .line 59
    const-string p1, "outputUri"

    .line 61
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Landroid/net/Uri;

    .line 67
    :try_start_42
    iget-object p2, p4, Le/a$a;->b:Le/a;

    .line 69
    iget-object v1, p2, Le/a;->a:Landroid/content/Context;

    .line 71
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 78
    move-result-object p1

    .line 79
    iput-object p1, p2, Le/a;->d:Ljava/io/InputStream;
    :try_end_50
    .catch Ljava/io/FileNotFoundException; {:try_start_42 .. :try_end_50} :catch_50

    .line 81
    :catch_50
    :cond_50
    iget-object p1, p4, Le/a$a;->b:Le/a;

    .line 83
    iget-object p1, p1, Le/a;->d:Ljava/io/InputStream;

    .line 85
    if-eqz p1, :cond_5c

    .line 87
    iget-object p2, p4, Le/a$a;->a:Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;

    .line 89
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onDataReady(Ljava/lang/Object;)V

    .line 92
    goto :goto_66

    .line 93
    :cond_5c
    iget-object p1, p4, Le/a$a;->a:Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;

    .line 95
    new-instance p2, La/a/a/c;

    .line 97
    invoke-direct {p2}, La/a/a/c;-><init>()V

    .line 100
    invoke-interface {p1, p2}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onLoadFailed(Ljava/lang/Exception;)V

    .line 103
    :goto_66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    return v0
.end method
