.class public abstract Lcom/xiaomi/onetrack/util/oaid/a/d$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/xiaomi/onetrack/util/oaid/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/util/oaid/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/util/oaid/a/d$a$a;
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

.method public static a(Landroid/os/IBinder;)Lcom/xiaomi/onetrack/util/oaid/a/d;
    .registers 3

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_4
    const-string v0, "com.heytap.openid.IOpenID"

    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_14

    .line 13
    instance-of v1, v0, Lcom/xiaomi/onetrack/util/oaid/a/d;

    .line 15
    if-nez v1, :cond_11

    .line 17
    goto :goto_14

    .line 18
    :cond_11
    check-cast v0, Lcom/xiaomi/onetrack/util/oaid/a/d;

    .line 20
    return-object v0

    .line 21
    :cond_14
    :goto_14
    new-instance v0, Lcom/xiaomi/onetrack/util/oaid/a/d$a$a;

    .line 23
    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/util/oaid/a/d$a$a;-><init>(Landroid/os/IBinder;)V

    .line 26
    return-object v0
.end method
