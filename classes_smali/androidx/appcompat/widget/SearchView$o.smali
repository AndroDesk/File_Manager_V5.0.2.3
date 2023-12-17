.class public final Landroidx/appcompat/widget/SearchView$o;
.super Ljava/lang/Object;
.source "SearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "o"
.end annotation


# instance fields
.field public a:Ljava/lang/reflect/Method;

.field public b:Ljava/lang/reflect/Method;

.field public c:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DiscouragedPrivateApi",
            "SoonBlockedPrivateApi"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/appcompat/widget/SearchView$o;->a:Ljava/lang/reflect/Method;

    .line 7
    iput-object v0, p0, Landroidx/appcompat/widget/SearchView$o;->b:Ljava/lang/reflect/Method;

    .line 9
    iput-object v0, p0, Landroidx/appcompat/widget/SearchView$o;->c:Ljava/lang/reflect/Method;

    .line 11
    invoke-static {}, Landroidx/appcompat/widget/SearchView$o;->a()V

    .line 14
    const/4 v0, 0x0

    .line 15
    const/4 v1, 0x1

    .line 16
    :try_start_f
    const-class v2, Landroid/widget/AutoCompleteTextView;

    .line 18
    const-string v3, "doBeforeTextChanged"

    .line 20
    new-array v4, v0, [Ljava/lang/Class;

    .line 22
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 25
    move-result-object v2

    .line 26
    iput-object v2, p0, Landroidx/appcompat/widget/SearchView$o;->a:Ljava/lang/reflect/Method;

    .line 28
    invoke-virtual {v2, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_f .. :try_end_1e} :catch_1e

    .line 31
    :catch_1e
    :try_start_1e
    const-class v2, Landroid/widget/AutoCompleteTextView;

    .line 33
    const-string v3, "doAfterTextChanged"

    .line 35
    new-array v4, v0, [Ljava/lang/Class;

    .line 37
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 40
    move-result-object v2

    .line 41
    iput-object v2, p0, Landroidx/appcompat/widget/SearchView$o;->b:Ljava/lang/reflect/Method;

    .line 43
    invoke-virtual {v2, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_2d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1e .. :try_end_2d} :catch_2d

    .line 46
    :catch_2d
    :try_start_2d
    const-class v2, Landroid/widget/AutoCompleteTextView;

    .line 48
    const-string v3, "ensureImeVisible"

    .line 50
    new-array v4, v1, [Ljava/lang/Class;

    .line 52
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 54
    aput-object v5, v4, v0

    .line 56
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 59
    move-result-object v0

    .line 60
    iput-object v0, p0, Landroidx/appcompat/widget/SearchView$o;->c:Ljava/lang/reflect/Method;

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_40
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2d .. :try_end_40} :catch_40

    .line 65
    :catch_40
    return-void
.end method

.method public static a()V
    .registers 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1d

    .line 5
    if-ge v0, v1, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedClassVersionError;

    .line 10
    const-string v1, "This function can only be used for API Level < 29."

    .line 12
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedClassVersionError;-><init>(Ljava/lang/String;)V

    .line 15
    throw v0
.end method
