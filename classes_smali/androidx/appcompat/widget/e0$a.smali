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

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_3
    const-string v3, "android.graphics.Insets"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-class v4, Landroid/graphics/drawable/Drawable;

    const-string v5, "getOpticalInsets"

    new-array v6, v1, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_13
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_13} :catch_43
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_13} :catch_3f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_13} :catch_3b

    :try_start_13
    const-string v5, "left"

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5
    :try_end_19
    .catch Ljava/lang/NoSuchMethodException; {:try_start_13 .. :try_end_19} :catch_39
    .catch Ljava/lang/ClassNotFoundException; {:try_start_13 .. :try_end_19} :catch_37
    .catch Ljava/lang/NoSuchFieldException; {:try_start_13 .. :try_end_19} :catch_35

    :try_start_19
    const-string v6, "top"

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6
    :try_end_1f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_19 .. :try_end_1f} :catch_33
    .catch Ljava/lang/ClassNotFoundException; {:try_start_19 .. :try_end_1f} :catch_31
    .catch Ljava/lang/NoSuchFieldException; {:try_start_19 .. :try_end_1f} :catch_2f

    :try_start_1f
    const-string v7, "right"

    invoke-virtual {v3, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7
    :try_end_25
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1f .. :try_end_25} :catch_2d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1f .. :try_end_25} :catch_2d
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1f .. :try_end_25} :catch_2d

    :try_start_25
    const-string v8, "bottom"

    invoke-virtual {v3, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3
    :try_end_2b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_25 .. :try_end_2b} :catch_47
    .catch Ljava/lang/ClassNotFoundException; {:try_start_25 .. :try_end_2b} :catch_47
    .catch Ljava/lang/NoSuchFieldException; {:try_start_25 .. :try_end_2b} :catch_47

    move v8, v0

    goto :goto_49

    :catch_2d
    move-object v7, v2

    goto :goto_47

    :catch_2f
    move-object v6, v2

    goto :goto_46

    :catch_31
    move-object v6, v2

    goto :goto_46

    :catch_33
    move-object v6, v2

    goto :goto_46

    :catch_35
    move-object v5, v2

    goto :goto_3d

    :catch_37
    move-object v5, v2

    goto :goto_41

    :catch_39
    move-object v5, v2

    goto :goto_45

    :catch_3b
    move-object v4, v2

    move-object v5, v4

    :goto_3d
    move-object v6, v5

    goto :goto_46

    :catch_3f
    move-object v4, v2

    move-object v5, v4

    :goto_41
    move-object v6, v5

    goto :goto_46

    :catch_43
    move-object v4, v2

    move-object v5, v4

    :goto_45
    move-object v6, v5

    :goto_46
    move-object v7, v6

    :catch_47
    :goto_47
    move v8, v1

    move-object v3, v2

    :goto_49
    if-eqz v8, :cond_58

    sput-object v4, Landroidx/appcompat/widget/e0$a;->b:Ljava/lang/reflect/Method;

    sput-object v5, Landroidx/appcompat/widget/e0$a;->c:Ljava/lang/reflect/Field;

    sput-object v6, Landroidx/appcompat/widget/e0$a;->d:Ljava/lang/reflect/Field;

    sput-object v7, Landroidx/appcompat/widget/e0$a;->e:Ljava/lang/reflect/Field;

    sput-object v3, Landroidx/appcompat/widget/e0$a;->f:Ljava/lang/reflect/Field;

    sput-boolean v0, Landroidx/appcompat/widget/e0$a;->a:Z

    goto :goto_64

    :cond_58
    sput-object v2, Landroidx/appcompat/widget/e0$a;->b:Ljava/lang/reflect/Method;

    sput-object v2, Landroidx/appcompat/widget/e0$a;->c:Ljava/lang/reflect/Field;

    sput-object v2, Landroidx/appcompat/widget/e0$a;->d:Ljava/lang/reflect/Field;

    sput-object v2, Landroidx/appcompat/widget/e0$a;->e:Ljava/lang/reflect/Field;

    sput-object v2, Landroidx/appcompat/widget/e0$a;->f:Ljava/lang/reflect/Field;

    sput-boolean v1, Landroidx/appcompat/widget/e0$a;->a:Z

    :goto_64
    return-void
.end method
