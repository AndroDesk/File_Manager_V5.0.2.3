.class public final Landroidx/appcompat/widget/e0;
.super Ljava/lang/Object;
.source "DrawableUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/e0$b;,
        Landroidx/appcompat/widget/e0$a;
    }
.end annotation


# static fields
.field public static final a:[I

.field public static final b:[I

.field public static final c:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [I

    .line 4
    const v1, 0x10100a0

    .line 7
    const/4 v2, 0x0

    .line 8
    aput v1, v0, v2

    .line 10
    sput-object v0, Landroidx/appcompat/widget/e0;->a:[I

    .line 12
    new-array v0, v2, [I

    .line 14
    sput-object v0, Landroidx/appcompat/widget/e0;->b:[I

    .line 16
    new-instance v0, Landroid/graphics/Rect;

    .line 18
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 21
    sput-object v0, Landroidx/appcompat/widget/e0;->c:Landroid/graphics/Rect;

    .line 23
    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    const/16 v2, 0x1d

    .line 13
    if-lt v1, v2, :cond_32

    .line 15
    const/16 v2, 0x1f

    .line 17
    if-ge v1, v2, :cond_32

    .line 19
    const-string v1, "android.graphics.drawable.ColorStateListDrawable"

    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_32

    .line 27
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_2a

    .line 33
    array-length v1, v0

    .line 34
    if-nez v1, :cond_24

    .line 36
    goto :goto_2a

    .line 37
    :cond_24
    sget-object v1, Landroidx/appcompat/widget/e0;->b:[I

    .line 39
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 42
    goto :goto_2f

    .line 43
    :cond_2a
    :goto_2a
    sget-object v1, Landroidx/appcompat/widget/e0;->a:[I

    .line 45
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 48
    :goto_2f
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 51
    :cond_32
    return-void
.end method

.method public static b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;
    .registers 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1d

    .line 5
    if-lt v0, v1, :cond_18

    .line 7
    invoke-static {p0}, Landroidx/appcompat/widget/e0$b;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Insets;

    .line 10
    move-result-object p0

    .line 11
    new-instance v0, Landroid/graphics/Rect;

    .line 13
    iget v1, p0, Landroid/graphics/Insets;->left:I

    .line 15
    iget v2, p0, Landroid/graphics/Insets;->top:I

    .line 17
    iget v3, p0, Landroid/graphics/Insets;->right:I

    .line 19
    iget p0, p0, Landroid/graphics/Insets;->bottom:I

    .line 21
    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 24
    return-object v0

    .line 25
    :cond_18
    instance-of v2, p0, Lg0/c;

    .line 27
    if-eqz v2, :cond_22

    .line 29
    check-cast p0, Lg0/c;

    .line 31
    invoke-interface {p0}, Lg0/c;->b()Landroid/graphics/drawable/Drawable;

    .line 34
    move-result-object p0

    .line 35
    :cond_22
    if-ge v0, v1, :cond_51

    .line 37
    sget-boolean v0, Landroidx/appcompat/widget/e0$a;->a:Z

    .line 39
    if-eqz v0, :cond_53

    .line 41
    :try_start_28
    sget-object v0, Landroidx/appcompat/widget/e0$a;->b:Ljava/lang/reflect/Method;

    .line 43
    const/4 v1, 0x0

    .line 44
    new-array v1, v1, [Ljava/lang/Object;

    .line 46
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    move-result-object p0

    .line 50
    if-eqz p0, :cond_53

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    .line 54
    sget-object v1, Landroidx/appcompat/widget/e0$a;->c:Ljava/lang/reflect/Field;

    .line 56
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 59
    move-result v1

    .line 60
    sget-object v2, Landroidx/appcompat/widget/e0$a;->d:Ljava/lang/reflect/Field;

    .line 62
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 65
    move-result v2

    .line 66
    sget-object v3, Landroidx/appcompat/widget/e0$a;->e:Ljava/lang/reflect/Field;

    .line 68
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 71
    move-result v3

    .line 72
    sget-object v4, Landroidx/appcompat/widget/e0$a;->f:Ljava/lang/reflect/Field;

    .line 74
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 77
    move-result p0

    .line 78
    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_50
    .catch Ljava/lang/IllegalAccessException; {:try_start_28 .. :try_end_50} :catch_53
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_28 .. :try_end_50} :catch_53

    .line 81
    goto :goto_55

    .line 82
    :cond_51
    sget-boolean p0, Landroidx/appcompat/widget/e0$a;->a:Z

    .line 84
    :catch_53
    :cond_53
    sget-object v0, Landroidx/appcompat/widget/e0;->c:Landroid/graphics/Rect;

    .line 86
    :goto_55
    return-object v0
.end method

.method public static c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .registers 3

    .line 1
    const/4 v0, 0x3

    .line 2
    if-eq p0, v0, :cond_1d

    .line 4
    const/4 v0, 0x5

    .line 5
    if-eq p0, v0, :cond_1a

    .line 7
    const/16 v0, 0x9

    .line 9
    if-eq p0, v0, :cond_17

    .line 11
    packed-switch p0, :pswitch_data_20

    .line 14
    return-object p1

    .line 15
    :pswitch_e  #0x10
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    .line 17
    return-object p0

    .line 18
    :pswitch_11  #0xf
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    .line 20
    return-object p0

    .line 21
    :pswitch_14  #0xe
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 23
    return-object p0

    .line 24
    :cond_17
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 26
    return-object p0

    .line 27
    :cond_1a
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 29
    return-object p0

    .line 30
    :cond_1d
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 32
    return-object p0

    .line 33
    :pswitch_data_20
    .packed-switch 0xe
        :pswitch_14  #0000000e
        :pswitch_11  #0000000f
        :pswitch_e  #00000010
    .end packed-switch
.end method
