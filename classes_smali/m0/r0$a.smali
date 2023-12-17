.class public final Lm0/r0$a;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SoonBlockedPrivateApi"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:Ljava/lang/reflect/Field;

.field public static b:Ljava/lang/reflect/Field;

.field public static c:Ljava/lang/reflect/Field;

.field public static d:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    :try_start_0
    const-class v0, Landroid/view/View;

    .line 3
    const-string v1, "mAttachInfo"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lm0/r0$a;->a:Ljava/lang/reflect/Field;

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 15
    const-string v0, "android.view.View$AttachInfo"

    .line 17
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 20
    move-result-object v0

    .line 21
    const-string v2, "mStableInsets"

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 26
    move-result-object v2

    .line 27
    sput-object v2, Lm0/r0$a;->b:Ljava/lang/reflect/Field;

    .line 29
    invoke-virtual {v2, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 32
    const-string v2, "mContentInsets"

    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Lm0/r0$a;->c:Ljava/lang/reflect/Field;

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 43
    sput-boolean v1, Lm0/r0$a;->d:Z
    :try_end_2c
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_2c} :catch_2d

    .line 45
    goto :goto_44

    .line 46
    :catch_2d
    move-exception v0

    .line 47
    const-string v1, "Failed to get visible insets from AttachInfo "

    .line 49
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v1

    .line 64
    const-string v2, "WindowInsetsCompat"

    .line 66
    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    :goto_44
    return-void
.end method
