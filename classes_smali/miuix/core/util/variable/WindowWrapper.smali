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

    .line 1
    :try_start_0
    const-class v0, Landroid/view/Window;

    .line 3
    const-string v1, "setExtraFlags"

    .line 5
    const/4 v2, 0x2

    .line 6
    new-array v2, v2, [Ljava/lang/Class;

    .line 8
    const/4 v3, 0x0

    .line 9
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 11
    aput-object v4, v2, v3

    .line 13
    const/4 v3, 0x1

    .line 14
    aput-object v4, v2, v3

    .line 16
    invoke-static {v0, v1, v2}, Lmiuix/reflect/Reflects;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lmiuix/core/util/variable/WindowWrapper;->setExtraFlags:Ljava/lang/reflect/Method;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    .line 22
    goto :goto_19

    .line 23
    :catch_16
    const/4 v0, 0x0

    .line 24
    sput-object v0, Lmiuix/core/util/variable/WindowWrapper;->setExtraFlags:Ljava/lang/reflect/Method;

    .line 26
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

    .line 1
    sget-object v0, Lmiuix/core/util/variable/WindowWrapper;->setExtraFlags:Ljava/lang/reflect/Method;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    const/high16 v0, -0x80000000

    .line 9
    const/4 v2, 0x1

    .line 10
    if-nez p1, :cond_f

    .line 12
    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 15
    goto :goto_29

    .line 16
    :cond_f
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    .line 19
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 22
    move-result-object v0

    .line 23
    if-ne p1, v2, :cond_1e

    .line 25
    const/16 v3, 0x2010

    .line 27
    invoke-virtual {v0, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 30
    goto :goto_29

    .line 31
    :cond_1e
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    .line 34
    move-result v3

    .line 35
    and-int/lit16 v3, v3, -0x2001

    .line 37
    and-int/lit8 v3, v3, -0x11

    .line 39
    invoke-virtual {v0, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 42
    :goto_29
    const/high16 v0, 0x4000000

    .line 44
    if-nez p1, :cond_31

    .line 46
    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 49
    goto :goto_34

    .line 50
    :cond_31
    invoke-virtual {p0, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 53
    :goto_34
    const/4 v0, 0x2

    .line 54
    const/16 v3, 0x11

    .line 56
    if-nez p1, :cond_4d

    .line 58
    :try_start_39
    sget-object p1, Lmiuix/core/util/variable/WindowWrapper;->setExtraFlags:Ljava/lang/reflect/Method;

    .line 60
    new-array v0, v0, [Ljava/lang/Object;

    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    move-result-object v4

    .line 66
    aput-object v4, v0, v1

    .line 68
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    move-result-object v3

    .line 72
    aput-object v3, v0, v2

    .line 74
    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    goto :goto_65

    .line 78
    :cond_4d
    if-ne p1, v2, :cond_51

    .line 80
    move p1, v3

    .line 81
    goto :goto_52

    .line 82
    :cond_51
    move p1, v2

    .line 83
    :goto_52
    sget-object v4, Lmiuix/core/util/variable/WindowWrapper;->setExtraFlags:Ljava/lang/reflect/Method;

    .line 85
    new-array v0, v0, [Ljava/lang/Object;

    .line 87
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    move-result-object p1

    .line 91
    aput-object p1, v0, v1

    .line 93
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    move-result-object p1

    .line 97
    aput-object p1, v0, v2

    .line 99
    invoke-virtual {v4, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_65} :catch_66

    .line 102
    :goto_65
    move v1, v2

    .line 103
    :catch_66
    return v1
.end method
