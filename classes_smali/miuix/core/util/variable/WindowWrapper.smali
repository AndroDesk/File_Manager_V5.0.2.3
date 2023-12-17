.class public Lmiuix/core/util/variable/WindowWrapper;
.super Ljava/lang/Object;
.source "WindowWrapper.java"


# static fields
.field private static final EXTRA_FLAG_STATUS_BAR_DARK_MODE:I = 0x10

.field private static final EXTRA_FLAG_STATUS_BAR_TRANSPARENT:I = 0x1

.field private static final EXTRA_FLAG_STATUS_BAR_TRANSPARENT_MASK:I = 0x11

.field private static final FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS:I = -0x80000000

.field private static final FLAG_TRANSLUCENT_STATUS:I = 0x4000000

.field public static setExtraFlags:Ljava/lang/reflect/Method;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    :try_start_0
    const-class v0, Landroid/view/Window;

    const-string v1, "setExtraFlags"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lmiuix/reflect/Reflects;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lmiuix/core/util/variable/WindowWrapper;->setExtraFlags:Ljava/lang/reflect/Method;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_19

    :catch_16
    const/4 v0, 0x0

    sput-object v0, Lmiuix/core/util/variable/WindowWrapper;->setExtraFlags:Ljava/lang/reflect/Method;

    :goto_19
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setTranslucentStatus(Landroid/view/Window;I)Z
    .registers 7

    sget-object v0, Lmiuix/core/util/variable/WindowWrapper;->setExtraFlags:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/high16 v0, -0x80000000

    const/4 v2, 0x1

    if-nez p1, :cond_f

    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_29

    :cond_f
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-ne p1, v2, :cond_1e

    const/16 v3, 0x2010

    invoke-virtual {v0, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_29

    :cond_1e
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v3

    and-int/lit16 v3, v3, -0x2001

    and-int/lit8 v3, v3, -0x11

    invoke-virtual {v0, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_29
    const/high16 v0, 0x4000000

    if-nez p1, :cond_31

    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_34

    :cond_31
    invoke-virtual {p0, v0, v0}, Landroid/view/Window;->setFlags(II)V

    :goto_34
    const/4 v0, 0x2

    const/16 v3, 0x11

    if-nez p1, :cond_4d

    :try_start_39
    sget-object p1, Lmiuix/core/util/variable/WindowWrapper;->setExtraFlags:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_65

    :cond_4d
    if-ne p1, v2, :cond_51

    move p1, v3

    goto :goto_52

    :cond_51
    move p1, v2

    :goto_52
    sget-object v4, Lmiuix/core/util/variable/WindowWrapper;->setExtraFlags:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-virtual {v4, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_65} :catch_66

    :goto_65
    move v1, v2

    :catch_66
    return v1
.end method