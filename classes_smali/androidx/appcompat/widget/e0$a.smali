.class public final Landroidx/appcompat/widget/e0$a;
.super Ljava/lang/Object;
.source "DrawableUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Z

.field public static final b:Ljava/lang/reflect/Method;

.field public static final c:Ljava/lang/reflect/Field;

.field public static final d:Ljava/lang/reflect/Field;

.field public static final e:Ljava/lang/reflect/Field;

.field public static final f:Ljava/lang/reflect/Field;


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :try_start_3
    const-string v3, "android.graphics.Insets"

    .line 6
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 9
    move-result-object v3

    .line 10
    const-class v4, Landroid/graphics/drawable/Drawable;

    .line 12
    const-string v5, "getOpticalInsets"

    .line 14
    new-array v6, v1, [Ljava/lang/Class;

    .line 16
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 19
    move-result-object v4
    :try_end_13
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_13} :catch_43
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_13} :catch_3f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_13} :catch_3b

    .line 20
    :try_start_13
    const-string v5, "left"

    .line 22
    invoke-virtual {v3, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 25
    move-result-object v5
    :try_end_19
    .catch Ljava/lang/NoSuchMethodException; {:try_start_13 .. :try_end_19} :catch_39
    .catch Ljava/lang/ClassNotFoundException; {:try_start_13 .. :try_end_19} :catch_37
    .catch Ljava/lang/NoSuchFieldException; {:try_start_13 .. :try_end_19} :catch_35

    .line 26
    :try_start_19
    const-string v6, "top"

    .line 28
    invoke-virtual {v3, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 31
    move-result-object v6
    :try_end_1f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_19 .. :try_end_1f} :catch_33
    .catch Ljava/lang/ClassNotFoundException; {:try_start_19 .. :try_end_1f} :catch_31
    .catch Ljava/lang/NoSuchFieldException; {:try_start_19 .. :try_end_1f} :catch_2f

    .line 32
    :try_start_1f
    const-string v7, "right"

    .line 34
    invoke-virtual {v3, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 37
    move-result-object v7
    :try_end_25
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1f .. :try_end_25} :catch_2d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1f .. :try_end_25} :catch_2d
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1f .. :try_end_25} :catch_2d

    .line 38
    :try_start_25
    const-string v8, "bottom"

    .line 40
    invoke-virtual {v3, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 43
    move-result-object v3
    :try_end_2b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_25 .. :try_end_2b} :catch_47
    .catch Ljava/lang/ClassNotFoundException; {:try_start_25 .. :try_end_2b} :catch_47
    .catch Ljava/lang/NoSuchFieldException; {:try_start_25 .. :try_end_2b} :catch_47

    .line 44
    move v8, v0

    .line 45
    goto :goto_49

    .line 46
    :catch_2d
    move-object v7, v2

    .line 47
    goto :goto_47

    .line 48
    :catch_2f
    move-object v6, v2

    .line 49
    goto :goto_46

    .line 50
    :catch_31
    move-object v6, v2

    .line 51
    goto :goto_46

    .line 52
    :catch_33
    move-object v6, v2

    .line 53
    goto :goto_46

    .line 54
    :catch_35
    move-object v5, v2

    .line 55
    goto :goto_3d

    .line 56
    :catch_37
    move-object v5, v2

    .line 57
    goto :goto_41

    .line 58
    :catch_39
    move-object v5, v2

    .line 59
    goto :goto_45

    .line 60
    :catch_3b
    move-object v4, v2

    .line 61
    move-object v5, v4

    .line 62
    :goto_3d
    move-object v6, v5

    .line 63
    goto :goto_46

    .line 64
    :catch_3f
    move-object v4, v2

    .line 65
    move-object v5, v4

    .line 66
    :goto_41
    move-object v6, v5

    .line 67
    goto :goto_46

    .line 68
    :catch_43
    move-object v4, v2

    .line 69
    move-object v5, v4

    .line 70
    :goto_45
    move-object v6, v5

    .line 71
    :goto_46
    move-object v7, v6

    .line 72
    :catch_47
    :goto_47
    move v8, v1

    .line 73
    move-object v3, v2

    .line 74
    :goto_49
    if-eqz v8, :cond_58

    .line 76
    sput-object v4, Landroidx/appcompat/widget/e0$a;->b:Ljava/lang/reflect/Method;

    .line 78
    sput-object v5, Landroidx/appcompat/widget/e0$a;->c:Ljava/lang/reflect/Field;

    .line 80
    sput-object v6, Landroidx/appcompat/widget/e0$a;->d:Ljava/lang/reflect/Field;

    .line 82
    sput-object v7, Landroidx/appcompat/widget/e0$a;->e:Ljava/lang/reflect/Field;

    .line 84
    sput-object v3, Landroidx/appcompat/widget/e0$a;->f:Ljava/lang/reflect/Field;

    .line 86
    sput-boolean v0, Landroidx/appcompat/widget/e0$a;->a:Z

    .line 88
    goto :goto_64

    .line 89
    :cond_58
    sput-object v2, Landroidx/appcompat/widget/e0$a;->b:Ljava/lang/reflect/Method;

    .line 91
    sput-object v2, Landroidx/appcompat/widget/e0$a;->c:Ljava/lang/reflect/Field;

    .line 93
    sput-object v2, Landroidx/appcompat/widget/e0$a;->d:Ljava/lang/reflect/Field;

    .line 95
    sput-object v2, Landroidx/appcompat/widget/e0$a;->e:Ljava/lang/reflect/Field;

    .line 97
    sput-object v2, Landroidx/appcompat/widget/e0$a;->f:Ljava/lang/reflect/Field;

    .line 99
    sput-boolean v1, Landroidx/appcompat/widget/e0$a;->a:Z

    .line 101
    :goto_64
    return-void
.end method
