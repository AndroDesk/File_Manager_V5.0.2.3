.class public abstract Lcom/xiaomi/onetrack/util/oaid/a/c$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/xiaomi/onetrack/util/oaid/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/util/oaid/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/util/oaid/a/c$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/xiaomi/onetrack/util/oaid/a/c;
    .registers 3

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_4
    const-string v0, "com.zui.deviceidservice.IDeviceidInterface"

    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_14

    .line 13
    instance-of v1, v0, Lcom/xiaomi/onetrack/util/oaid/a/c;

    .line 15
    if-nez v1, :cond_11

    .line 17
    goto :goto_14

    .line 18
    :cond_11
    check-cast v0, Lcom/xiaomi/onetrack/util/oaid/a/c;

    .line 20
    return-object v0

    .line 21
    :cond_14
    :goto_14
    new-instance v0, Lcom/xiaomi/onetrack/util/oaid/a/c$a$a;

    .line 23
    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/util/oaid/a/c$a$a;-><init>(Landroid/os/IBinder;)V

    .line 26
    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "com.zui.deviceidservice.IDeviceidInterface"

    .line 4
    if-eq p1, v0, :cond_5f

    .line 6
    const/4 v2, 0x2

    .line 7
    if-eq p1, v2, :cond_51

    .line 9
    const/4 v2, 0x3

    .line 10
    if-eq p1, v2, :cond_43

    .line 12
    const/4 v2, 0x4

    .line 13
    if-eq p1, v2, :cond_31

    .line 15
    const/4 v2, 0x5

    .line 16
    if-eq p1, v2, :cond_1f

    .line 18
    const v2, 0x5f4e5446

    .line 21
    if-eq p1, v2, :cond_1b

    .line 23
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 26
    move-result p1

    .line 27
    return p1

    .line 28
    :cond_1b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    return v0

    .line 32
    :cond_1f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    invoke-interface {p0, p1}, Lcom/xiaomi/onetrack/util/oaid/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 46
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    return v0

    .line 50
    :cond_31
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 57
    invoke-interface {p0, p1}, Lcom/xiaomi/onetrack/util/oaid/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    return v0

    .line 68
    :cond_43
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-interface {p0}, Lcom/xiaomi/onetrack/util/oaid/a/c;->c()Z

    .line 74
    move-result p1

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    return v0

    .line 82
    :cond_51
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-interface {p0}, Lcom/xiaomi/onetrack/util/oaid/a/c;->b()Ljava/lang/String;

    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    return v0

    .line 96
    :cond_5f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-interface {p0}, Lcom/xiaomi/onetrack/util/oaid/a/c;->a()Ljava/lang/String;

    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    return v0
.end method
