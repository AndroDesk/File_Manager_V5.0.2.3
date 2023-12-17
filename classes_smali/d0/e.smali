.class public final Ld0/e;
.super Ljava/lang/Object;
.source "ActivityRecreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld0/e$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final b:Ljava/lang/reflect/Field;

.field public static final c:Ljava/lang/reflect/Field;

.field public static final d:Ljava/lang/reflect/Method;

.field public static final e:Ljava/lang/reflect/Method;

.field public static final f:Ljava/lang/reflect/Method;

.field public static final g:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    const-class v0, Landroid/app/Activity;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Ld0/e;->g:Landroid/os/Handler;

    const/4 v1, 0x0

    :try_start_e
    const-string v2, "android.app.ActivityThread"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_15

    goto :goto_16

    :catchall_15
    move-object v2, v1

    :goto_16
    sput-object v2, Ld0/e;->a:Ljava/lang/Class;

    const/4 v2, 0x1

    :try_start_19
    const-string v3, "mMainThread"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_23

    goto :goto_24

    :catchall_23
    move-object v3, v1

    :goto_24
    sput-object v3, Ld0/e;->b:Ljava/lang/reflect/Field;

    :try_start_26
    const-string v3, "mToken"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_30

    goto :goto_31

    :catchall_30
    move-object v0, v1

    :goto_31
    sput-object v0, Ld0/e;->c:Ljava/lang/reflect/Field;

    sget-object v0, Ld0/e;->a:Ljava/lang/Class;

    const/4 v3, 0x3

    const-string v4, "performStopActivity"

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-nez v0, :cond_3d

    goto :goto_53

    :cond_3d
    :try_start_3d
    new-array v7, v3, [Ljava/lang/Class;

    const-class v8, Landroid/os/IBinder;

    aput-object v8, v7, v6

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v2

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v5

    invoke-virtual {v0, v4, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_52
    .catchall {:try_start_3d .. :try_end_52} :catchall_53

    goto :goto_54

    :catchall_53
    :goto_53
    move-object v0, v1

    :goto_54
    sput-object v0, Ld0/e;->d:Ljava/lang/reflect/Method;

    sget-object v0, Ld0/e;->a:Ljava/lang/Class;

    if-nez v0, :cond_5b

    goto :goto_6d

    :cond_5b
    :try_start_5b
    new-array v7, v5, [Ljava/lang/Class;

    const-class v8, Landroid/os/IBinder;

    aput-object v8, v7, v6

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v2

    invoke-virtual {v0, v4, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_6c
    .catchall {:try_start_5b .. :try_end_6c} :catchall_6d

    goto :goto_6e

    :catchall_6d
    :goto_6d
    move-object v0, v1

    :goto_6e
    sput-object v0, Ld0/e;->e:Ljava/lang/reflect/Method;

    sget-object v0, Ld0/e;->a:Ljava/lang/Class;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    if-eq v4, v7, :cond_7f

    const/16 v7, 0x1b

    if-ne v4, v7, :cond_7d

    goto :goto_7f

    :cond_7d
    move v4, v6

    goto :goto_80

    :cond_7f
    :goto_7f
    move v4, v2

    :goto_80
    if-eqz v4, :cond_b9

    if-nez v0, :cond_85

    goto :goto_b9

    :cond_85
    :try_start_85
    const-string v4, "requestRelaunchActivity"

    const/16 v7, 0x9

    new-array v7, v7, [Ljava/lang/Class;

    const-class v8, Landroid/os/IBinder;

    aput-object v8, v7, v6

    const-class v6, Ljava/util/List;

    aput-object v6, v7, v2

    const-class v6, Ljava/util/List;

    aput-object v6, v7, v5

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v7, v3

    const/4 v3, 0x4

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v7, v3

    const/4 v3, 0x5

    const-class v6, Landroid/content/res/Configuration;

    aput-object v6, v7, v3

    const/4 v3, 0x6

    const-class v6, Landroid/content/res/Configuration;

    aput-object v6, v7, v3

    const/4 v3, 0x7

    aput-object v5, v7, v3

    const/16 v3, 0x8

    aput-object v5, v7, v3

    invoke-virtual {v0, v4, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_b8
    .catchall {:try_start_85 .. :try_end_b8} :catchall_b9

    move-object v1, v0

    :catchall_b9
    :cond_b9
    :goto_b9
    sput-object v1, Ld0/e;->f:Ljava/lang/reflect/Method;

    return-void
.end method
