.class public abstract Lcom/xiaomi/a/a/a/a$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/xiaomi/a/a/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/a/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/a/a/a/a$a$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field private static final c:Ljava/lang/String; = "com.xiaomi.xmsf.push.service.IHttpService"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    const-string v0, "com.xiaomi.xmsf.push.service.IHttpService"

    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/xiaomi/a/a/a/a;
    .registers 3

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_4
    const-string v0, "com.xiaomi.xmsf.push.service.IHttpService"

    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_13

    .line 13
    instance-of v1, v0, Lcom/xiaomi/a/a/a/a;

    .line 15
    if-eqz v1, :cond_13

    .line 17
    check-cast v0, Lcom/xiaomi/a/a/a/a;

    .line 19
    return-object v0

    .line 20
    :cond_13
    new-instance v0, Lcom/xiaomi/a/a/a/a$a$a;

    .line 22
    invoke-direct {v0, p0}, Lcom/xiaomi/a/a/a/a$a$a;-><init>(Landroid/os/IBinder;)V

    .line 25
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8

    .line 1
    const-string v0, "com.xiaomi.xmsf.push.service.IHttpService"

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq p1, v1, :cond_34

    .line 6
    const/4 v2, 0x2

    .line 7
    if-eq p1, v2, :cond_16

    .line 9
    const v2, 0x5f4e5446

    .line 12
    if-eq p1, v2, :cond_12

    .line 14
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 17
    move-result p1

    .line 18
    return p1

    .line 19
    :cond_12
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    return v1

    .line 23
    :cond_16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    move-result-object p4

    .line 34
    invoke-virtual {p4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 37
    move-result-object p4

    .line 38
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    .line 41
    move-result-object p2

    .line 42
    invoke-interface {p0, p1, p2}, Lcom/xiaomi/a/a/a/a;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 49
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    return v1

    .line 53
    :cond_34
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    move-result-object p4

    .line 64
    invoke-virtual {p4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 67
    move-result-object p4

    .line 68
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    .line 71
    move-result-object p2

    .line 72
    invoke-interface {p0, p1, p2}, Lcom/xiaomi/a/a/a/a;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    return v1
.end method
