.class public Landroidx/appcompat/app/r;
.super Ljava/lang/Object;
.source "AppCompatViewInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/r$a;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AppCompatViewInflater"

.field private static final sAccessibilityHeading:[I

.field private static final sAccessibilityPaneTitle:[I

.field private static final sClassPrefixList:[Ljava/lang/String;

.field private static final sConstructorMap:Landroidx/collection/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/f<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sConstructorSignature:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final sOnClickAttrs:[I

.field private static final sScreenReaderFocusable:[I


# instance fields
.field private final mConstructorArgs:[Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Class;

    .line 4
    const-class v1, Landroid/content/Context;

    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 9
    const-class v1, Landroid/util/AttributeSet;

    .line 11
    const/4 v3, 0x1

    .line 12
    aput-object v1, v0, v3

    .line 14
    sput-object v0, Landroidx/appcompat/app/r;->sConstructorSignature:[Ljava/lang/Class;

    .line 16
    new-array v0, v3, [I

    .line 18
    const v1, 0x101026f

    .line 21
    aput v1, v0, v2

    .line 23
    sput-object v0, Landroidx/appcompat/app/r;->sOnClickAttrs:[I

    .line 25
    new-array v0, v3, [I

    .line 27
    const v1, 0x1010580

    .line 30
    aput v1, v0, v2

    .line 32
    sput-object v0, Landroidx/appcompat/app/r;->sAccessibilityHeading:[I

    .line 34
    new-array v0, v3, [I

    .line 36
    const v1, 0x101057c

    .line 39
    aput v1, v0, v2

    .line 41
    sput-object v0, Landroidx/appcompat/app/r;->sAccessibilityPaneTitle:[I

    .line 43
    new-array v0, v3, [I

    .line 45
    const v1, 0x1010574

    .line 48
    aput v1, v0, v2

    .line 50
    sput-object v0, Landroidx/appcompat/app/r;->sScreenReaderFocusable:[I

    .line 52
    const-string v0, "android.widget."

    .line 54
    const-string v1, "android.view."

    .line 56
    const-string v2, "android.webkit."

    .line 58
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    sput-object v0, Landroidx/appcompat/app/r;->sClassPrefixList:[Ljava/lang/String;

    .line 64
    new-instance v0, Landroidx/collection/f;

    .line 66
    invoke-direct {v0}, Landroidx/collection/f;-><init>()V

    .line 69
    sput-object v0, Landroidx/appcompat/app/r;->sConstructorMap:Landroidx/collection/f;

    .line 71
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x2

    .line 5
    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    iput-object v0, p0, Landroidx/appcompat/app/r;->mConstructorArgs:[Ljava/lang/Object;

    .line 9
    return-void
.end method

.method private backportAccessibilityAttributes(Landroid/content/Context;Landroid/view/View;Landroid/util/AttributeSet;)V
    .registers 9

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1c

    .line 5
    if-le v0, v1, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    sget-object v0, Landroidx/appcompat/app/r;->sAccessibilityHeading:[I

    .line 10
    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_28

    .line 21
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 24
    move-result v2

    .line 25
    sget-object v3, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 27
    new-instance v3, Lm0/f0;

    .line 29
    sget v4, Lc0/b;->tag_accessibility_heading:I

    .line 31
    invoke-direct {v3, v4}, Lm0/f0;-><init>(I)V

    .line 34
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v3, p2, v2}, Lm0/g0$b;->e(Landroid/view/View;Ljava/lang/Object;)V

    .line 41
    :cond_28
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 44
    sget-object v0, Landroidx/appcompat/app/r;->sAccessibilityPaneTitle:[I

    .line 46
    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_3e

    .line 56
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 59
    move-result-object v2

    .line 60
    invoke-static {p2, v2}, Lm0/g0;->n(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 63
    :cond_3e
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    sget-object v0, Landroidx/appcompat/app/r;->sScreenReaderFocusable:[I

    .line 68
    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 75
    move-result p3

    .line 76
    if-eqz p3, :cond_61

    .line 78
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 81
    move-result p3

    .line 82
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 84
    new-instance v0, Lm0/c0;

    .line 86
    sget v1, Lc0/b;->tag_screen_reader_focusable:I

    .line 88
    invoke-direct {v0, v1}, Lm0/c0;-><init>(I)V

    .line 91
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 94
    move-result-object p3

    .line 95
    invoke-virtual {v0, p2, p3}, Lm0/g0$b;->e(Landroid/view/View;Ljava/lang/Object;)V

    .line 98
    :cond_61
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 101
    return-void
.end method

.method private checkOnClickListener(Landroid/view/View;Landroid/util/AttributeSet;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroid/content/ContextWrapper;

    .line 7
    if-eqz v1, :cond_29

    .line 9
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 11
    invoke-static {p1}, Lm0/g0$c;->a(Landroid/view/View;)Z

    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_11

    .line 17
    goto :goto_29

    .line 18
    :cond_11
    sget-object v1, Landroidx/appcompat/app/r;->sOnClickAttrs:[I

    .line 20
    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 23
    move-result-object p2

    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_26

    .line 31
    new-instance v1, Landroidx/appcompat/app/r$a;

    .line 33
    invoke-direct {v1, p1, v0}, Landroidx/appcompat/app/r$a;-><init>(Landroid/view/View;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    :cond_26
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    :cond_29
    :goto_29
    return-void
.end method

.method private createViewByPrefix(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .registers 6

    .line 1
    sget-object v0, Landroidx/appcompat/app/r;->sConstructorMap:Landroidx/collection/f;

    .line 3
    invoke-virtual {v0, p2}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/reflect/Constructor;

    .line 9
    if-nez v1, :cond_35

    .line 11
    if-eqz p3, :cond_1c

    .line 13
    :try_start_c
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p3

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    move-object p3, p2

    .line 30
    :goto_1d
    const/4 v1, 0x0

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 34
    move-result-object p1

    .line 35
    invoke-static {p3, v1, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 38
    move-result-object p1

    .line 39
    const-class p3, Landroid/view/View;

    .line 41
    invoke-virtual {p1, p3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 44
    move-result-object p1

    .line 45
    sget-object p3, Landroidx/appcompat/app/r;->sConstructorSignature:[Ljava/lang/Class;

    .line 47
    invoke-virtual {p1, p3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, p2, v1}, Landroidx/collection/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_35
    const/4 p1, 0x1

    .line 55
    invoke-virtual {v1, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 58
    iget-object p1, p0, Landroidx/appcompat/app/r;->mConstructorArgs:[Ljava/lang/Object;

    .line 60
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Landroid/view/View;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_41} :catch_42

    .line 66
    return-object p1

    .line 67
    :catch_42
    const/4 p1, 0x0

    .line 68
    return-object p1
.end method

.method private createViewFromTag(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 9

    .line 1
    const-string v0, "view"

    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_f

    .line 10
    const-string p2, "class"

    .line 12
    invoke-interface {p3, v1, p2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object p2

    .line 16
    :cond_f
    const/4 v0, 0x1

    .line 17
    const/4 v2, 0x0

    .line 18
    :try_start_11
    iget-object v3, p0, Landroidx/appcompat/app/r;->mConstructorArgs:[Ljava/lang/Object;

    .line 20
    aput-object p1, v3, v2

    .line 22
    aput-object p3, v3, v0

    .line 24
    const/4 p3, -0x1

    .line 25
    const/16 v3, 0x2e

    .line 27
    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    .line 30
    move-result v3

    .line 31
    if-ne p3, v3, :cond_3f

    .line 33
    move p3, v2

    .line 34
    :goto_21
    sget-object v3, Landroidx/appcompat/app/r;->sClassPrefixList:[Ljava/lang/String;

    .line 36
    array-length v4, v3

    .line 37
    if-ge p3, v4, :cond_38

    .line 39
    aget-object v3, v3, p3

    .line 41
    invoke-direct {p0, p1, p2, v3}, Landroidx/appcompat/app/r;->createViewByPrefix(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    .line 44
    move-result-object v3
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_2c} :catch_52
    .catchall {:try_start_11 .. :try_end_2c} :catchall_4a

    .line 45
    if-eqz v3, :cond_35

    .line 47
    iget-object p1, p0, Landroidx/appcompat/app/r;->mConstructorArgs:[Ljava/lang/Object;

    .line 49
    aput-object v1, p1, v2

    .line 51
    aput-object v1, p1, v0

    .line 53
    return-object v3

    .line 54
    :cond_35
    add-int/lit8 p3, p3, 0x1

    .line 56
    goto :goto_21

    .line 57
    :cond_38
    iget-object p1, p0, Landroidx/appcompat/app/r;->mConstructorArgs:[Ljava/lang/Object;

    .line 59
    aput-object v1, p1, v2

    .line 61
    aput-object v1, p1, v0

    .line 63
    return-object v1

    .line 64
    :cond_3f
    :try_start_3f
    invoke-direct {p0, p1, p2, v1}, Landroidx/appcompat/app/r;->createViewByPrefix(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    .line 67
    move-result-object p1
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_43} :catch_52
    .catchall {:try_start_3f .. :try_end_43} :catchall_4a

    .line 68
    iget-object p2, p0, Landroidx/appcompat/app/r;->mConstructorArgs:[Ljava/lang/Object;

    .line 70
    aput-object v1, p2, v2

    .line 72
    aput-object v1, p2, v0

    .line 74
    return-object p1

    .line 75
    :catchall_4a
    move-exception p1

    .line 76
    iget-object p2, p0, Landroidx/appcompat/app/r;->mConstructorArgs:[Ljava/lang/Object;

    .line 78
    aput-object v1, p2, v2

    .line 80
    aput-object v1, p2, v0

    .line 82
    throw p1

    .line 83
    :catch_52
    iget-object p1, p0, Landroidx/appcompat/app/r;->mConstructorArgs:[Ljava/lang/Object;

    .line 85
    aput-object v1, p1, v2

    .line 87
    aput-object v1, p1, v0

    .line 89
    return-object v1
.end method

.method private static themifyContext(Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Landroid/content/Context;
    .registers 6

    .line 1
    sget-object v0, Lh/j;->View:[I

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 7
    move-result-object p1

    .line 8
    if-eqz p2, :cond_10

    .line 10
    sget p2, Lh/j;->View_android_theme:I

    .line 12
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 15
    move-result p2

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    move p2, v1

    .line 18
    :goto_11
    if-eqz p3, :cond_24

    .line 20
    if-nez p2, :cond_24

    .line 22
    sget p2, Lh/j;->View_theme:I

    .line 24
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 27
    move-result p2

    .line 28
    if-eqz p2, :cond_24

    .line 30
    const-string p3, "AppCompatViewInflater"

    .line 32
    const-string v0, "app:theme is now deprecated. Please move to using android:theme instead."

    .line 34
    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_24
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 40
    if-eqz p2, :cond_3a

    .line 42
    instance-of p1, p0, Lm/c;

    .line 44
    if-eqz p1, :cond_34

    .line 46
    move-object p1, p0

    .line 47
    check-cast p1, Lm/c;

    .line 49
    iget p1, p1, Lm/c;->a:I

    .line 51
    if-eq p1, p2, :cond_3a

    .line 53
    :cond_34
    new-instance p1, Lm/c;

    .line 55
    invoke-direct {p1, p0, p2}, Lm/c;-><init>(Landroid/content/Context;I)V

    .line 58
    move-object p0, p1

    .line 59
    :cond_3a
    return-object p0
.end method

.method private verifyNotNull(Landroid/view/View;Ljava/lang/String;)V
    .registers 5

    .line 1
    if-eqz p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, " asked to inflate view for <"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    const-string p2, ">, but returned null"

    .line 32
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p2

    .line 39
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    throw p1
.end method


# virtual methods
.method public createAutoCompleteTextView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/c;
    .registers 4

    .line 1
    new-instance v0, Landroidx/appcompat/widget/c;

    .line 3
    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    return-object v0
.end method

.method public createButton(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatButton;
    .registers 4

    .line 1
    new-instance v0, Landroidx/appcompat/widget/AppCompatButton;

    .line 3
    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    return-object v0
.end method

.method public createCheckBox(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatCheckBox;
    .registers 4

    .line 1
    new-instance v0, Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 3
    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    return-object v0
.end method

.method public createCheckedTextView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatCheckedTextView;
    .registers 4

    .line 1
    new-instance v0, Landroidx/appcompat/widget/AppCompatCheckedTextView;

    .line 3
    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    return-object v0
.end method

.method public createEditText(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/h;
    .registers 4

    .line 1
    new-instance v0, Landroidx/appcompat/widget/h;

    .line 3
    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    return-object v0
.end method

.method public createImageButton(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/k;
    .registers 4

    .line 1
    new-instance v0, Landroidx/appcompat/widget/k;

    .line 3
    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    return-object v0
.end method

.method public createImageView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatImageView;
    .registers 4

    .line 1
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 3
    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    return-object v0
.end method

.method public createMultiAutoCompleteTextView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/m;
    .registers 4

    .line 1
    new-instance v0, Landroidx/appcompat/widget/m;

    .line 3
    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/m;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    return-object v0
.end method

.method public createRadioButton(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatRadioButton;
    .registers 4

    .line 1
    new-instance v0, Landroidx/appcompat/widget/AppCompatRadioButton;

    .line 3
    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    return-object v0
.end method

.method public createRatingBar(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/p;
    .registers 4

    .line 1
    new-instance v0, Landroidx/appcompat/widget/p;

    .line 3
    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/p;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    return-object v0
.end method

.method public createSeekBar(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/r;
    .registers 4

    .line 1
    new-instance v0, Landroidx/appcompat/widget/r;

    .line 3
    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/r;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    return-object v0
.end method

.method public createSpinner(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatSpinner;
    .registers 5

    .line 1
    new-instance v0, Landroidx/appcompat/widget/AppCompatSpinner;

    .line 3
    sget v1, Lh/a;->spinnerStyle:I

    .line 5
    invoke-direct {v0, p1, p2, v1}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    return-object v0
.end method

.method public createTextView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatTextView;
    .registers 4

    .line 1
    new-instance v0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 3
    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    return-object v0
.end method

.method public createToggleButton(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/b0;
    .registers 4

    .line 1
    new-instance v0, Landroidx/appcompat/widget/b0;

    .line 3
    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/b0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    return-object v0
.end method

.method public createView(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 4

    const/4 p1, 0x0

    return-object p1
.end method

.method public final createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZZ)Landroid/view/View;
    .registers 9

    .line 1
    if-eqz p5, :cond_9

    .line 3
    if-eqz p1, :cond_9

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    move-result-object p1

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    move-object p1, p3

    .line 11
    :goto_a
    if-nez p6, :cond_e

    .line 13
    if-eqz p7, :cond_12

    .line 15
    :cond_e
    invoke-static {p1, p4, p6, p7}, Landroidx/appcompat/app/r;->themifyContext(Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Landroid/content/Context;

    .line 18
    move-result-object p1

    .line 19
    :cond_12
    if-eqz p8, :cond_17

    .line 21
    invoke-static {p1}, Landroidx/appcompat/widget/v0;->a(Landroid/content/Context;)V

    .line 24
    :cond_17
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    const/4 p5, -0x1

    .line 28
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 31
    move-result p6

    .line 32
    sparse-switch p6, :sswitch_data_15a

    .line 35
    goto/16 :goto_cf

    .line 37
    :sswitch_24
    const-string p6, "Button"

    .line 39
    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result p6

    .line 43
    if-nez p6, :cond_2e

    .line 45
    goto/16 :goto_cf

    .line 47
    :cond_2e
    const/16 p5, 0xd

    .line 49
    goto/16 :goto_cf

    .line 51
    :sswitch_32
    const-string p6, "EditText"

    .line 53
    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    move-result p6

    .line 57
    if-nez p6, :cond_3c

    .line 59
    goto/16 :goto_cf

    .line 61
    :cond_3c
    const/16 p5, 0xc

    .line 63
    goto/16 :goto_cf

    .line 65
    :sswitch_40
    const-string p6, "CheckBox"

    .line 67
    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    move-result p6

    .line 71
    if-nez p6, :cond_4a

    .line 73
    goto/16 :goto_cf

    .line 75
    :cond_4a
    const/16 p5, 0xb

    .line 77
    goto/16 :goto_cf

    .line 79
    :sswitch_4e
    const-string p6, "AutoCompleteTextView"

    .line 81
    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    move-result p6

    .line 85
    if-nez p6, :cond_58

    .line 87
    goto/16 :goto_cf

    .line 89
    :cond_58
    const/16 p5, 0xa

    .line 91
    goto/16 :goto_cf

    .line 93
    :sswitch_5c
    const-string p6, "ImageView"

    .line 95
    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    move-result p6

    .line 99
    if-nez p6, :cond_66

    .line 101
    goto/16 :goto_cf

    .line 103
    :cond_66
    const/16 p5, 0x9

    .line 105
    goto/16 :goto_cf

    .line 107
    :sswitch_6a
    const-string p6, "ToggleButton"

    .line 109
    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    move-result p6

    .line 113
    if-nez p6, :cond_74

    .line 115
    goto/16 :goto_cf

    .line 117
    :cond_74
    const/16 p5, 0x8

    .line 119
    goto/16 :goto_cf

    .line 121
    :sswitch_78
    const-string p6, "RadioButton"

    .line 123
    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    move-result p6

    .line 127
    if-nez p6, :cond_81

    .line 129
    goto :goto_cf

    .line 130
    :cond_81
    const/4 p5, 0x7

    .line 131
    goto :goto_cf

    .line 132
    :sswitch_83
    const-string p6, "Spinner"

    .line 134
    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    move-result p6

    .line 138
    if-nez p6, :cond_8c

    .line 140
    goto :goto_cf

    .line 141
    :cond_8c
    const/4 p5, 0x6

    .line 142
    goto :goto_cf

    .line 143
    :sswitch_8e
    const-string p6, "SeekBar"

    .line 145
    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    move-result p6

    .line 149
    if-nez p6, :cond_97

    .line 151
    goto :goto_cf

    .line 152
    :cond_97
    const/4 p5, 0x5

    .line 153
    goto :goto_cf

    .line 154
    :sswitch_99
    const-string p6, "ImageButton"

    .line 156
    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    move-result p6

    .line 160
    if-nez p6, :cond_a2

    .line 162
    goto :goto_cf

    .line 163
    :cond_a2
    const/4 p5, 0x4

    .line 164
    goto :goto_cf

    .line 165
    :sswitch_a4
    const-string p6, "TextView"

    .line 167
    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    move-result p6

    .line 171
    if-nez p6, :cond_ad

    .line 173
    goto :goto_cf

    .line 174
    :cond_ad
    const/4 p5, 0x3

    .line 175
    goto :goto_cf

    .line 176
    :sswitch_af
    const-string p6, "MultiAutoCompleteTextView"

    .line 178
    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    move-result p6

    .line 182
    if-nez p6, :cond_b8

    .line 184
    goto :goto_cf

    .line 185
    :cond_b8
    const/4 p5, 0x2

    .line 186
    goto :goto_cf

    .line 187
    :sswitch_ba
    const-string p6, "CheckedTextView"

    .line 189
    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    move-result p6

    .line 193
    if-nez p6, :cond_c3

    .line 195
    goto :goto_cf

    .line 196
    :cond_c3
    const/4 p5, 0x1

    .line 197
    goto :goto_cf

    .line 198
    :sswitch_c5
    const-string p6, "RatingBar"

    .line 200
    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    move-result p6

    .line 204
    if-nez p6, :cond_ce

    .line 206
    goto :goto_cf

    .line 207
    :cond_ce
    const/4 p5, 0x0

    .line 208
    :goto_cf
    packed-switch p5, :pswitch_data_194

    .line 211
    invoke-virtual {p0, p1, p2, p4}, Landroidx/appcompat/app/r;->createView(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    .line 214
    move-result-object p5

    .line 215
    goto/16 :goto_148

    .line 217
    :pswitch_d8  #0xd
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/r;->createButton(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatButton;

    .line 220
    move-result-object p5

    .line 221
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/r;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    .line 224
    goto/16 :goto_148

    .line 226
    :pswitch_e1  #0xc
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/r;->createEditText(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/h;

    .line 229
    move-result-object p5

    .line 230
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/r;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    .line 233
    goto :goto_148

    .line 234
    :pswitch_e9  #0xb
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/r;->createCheckBox(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 237
    move-result-object p5

    .line 238
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/r;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    .line 241
    goto :goto_148

    .line 242
    :pswitch_f1  #0xa
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/r;->createAutoCompleteTextView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/c;

    .line 245
    move-result-object p5

    .line 246
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/r;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    .line 249
    goto :goto_148

    .line 250
    :pswitch_f9  #0x9
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/r;->createImageView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatImageView;

    .line 253
    move-result-object p5

    .line 254
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/r;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    .line 257
    goto :goto_148

    .line 258
    :pswitch_101  #0x8
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/r;->createToggleButton(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/b0;

    .line 261
    move-result-object p5

    .line 262
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/r;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    .line 265
    goto :goto_148

    .line 266
    :pswitch_109  #0x7
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/r;->createRadioButton(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatRadioButton;

    .line 269
    move-result-object p5

    .line 270
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/r;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    .line 273
    goto :goto_148

    .line 274
    :pswitch_111  #0x6
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/r;->createSpinner(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatSpinner;

    .line 277
    move-result-object p5

    .line 278
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/r;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    .line 281
    goto :goto_148

    .line 282
    :pswitch_119  #0x5
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/r;->createSeekBar(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/r;

    .line 285
    move-result-object p5

    .line 286
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/r;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    .line 289
    goto :goto_148

    .line 290
    :pswitch_121  #0x4
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/r;->createImageButton(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/k;

    .line 293
    move-result-object p5

    .line 294
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/r;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    .line 297
    goto :goto_148

    .line 298
    :pswitch_129  #0x3
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/r;->createTextView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatTextView;

    .line 301
    move-result-object p5

    .line 302
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/r;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    .line 305
    goto :goto_148

    .line 306
    :pswitch_131  #0x2
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/r;->createMultiAutoCompleteTextView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/m;

    .line 309
    move-result-object p5

    .line 310
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/r;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    .line 313
    goto :goto_148

    .line 314
    :pswitch_139  #0x1
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/r;->createCheckedTextView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatCheckedTextView;

    .line 317
    move-result-object p5

    .line 318
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/r;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    .line 321
    goto :goto_148

    .line 322
    :pswitch_141  #0x0
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/r;->createRatingBar(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/p;

    .line 325
    move-result-object p5

    .line 326
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/r;->verifyNotNull(Landroid/view/View;Ljava/lang/String;)V

    .line 329
    :goto_148
    if-nez p5, :cond_150

    .line 331
    if-eq p3, p1, :cond_150

    .line 333
    invoke-direct {p0, p1, p2, p4}, Landroidx/appcompat/app/r;->createViewFromTag(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    .line 336
    move-result-object p5

    .line 337
    :cond_150
    if-eqz p5, :cond_158

    .line 339
    invoke-direct {p0, p5, p4}, Landroidx/appcompat/app/r;->checkOnClickListener(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 342
    invoke-direct {p0, p1, p5, p4}, Landroidx/appcompat/app/r;->backportAccessibilityAttributes(Landroid/content/Context;Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 345
    :cond_158
    return-object p5

    .line 346
    nop

    .line 347
    :sswitch_data_15a
    .sparse-switch
        -0x7404ceea -> :sswitch_c5
        -0x56c015e7 -> :sswitch_ba
        -0x503aa7ad -> :sswitch_af
        -0x37f7066e -> :sswitch_a4
        -0x37e04bb3 -> :sswitch_99
        -0x274065a5 -> :sswitch_8e
        -0x1440b607 -> :sswitch_83
        0x2e46a6ed -> :sswitch_78
        0x2fa453c6 -> :sswitch_6a
        0x431b5280 -> :sswitch_5c
        0x5445f9ba -> :sswitch_4e
        0x5f7507c3 -> :sswitch_40
        0x63577677 -> :sswitch_32
        0x77471352 -> :sswitch_24
    .end sparse-switch

    .line 405
    :pswitch_data_194
    .packed-switch 0x0
        :pswitch_141  #00000000
        :pswitch_139  #00000001
        :pswitch_131  #00000002
        :pswitch_129  #00000003
        :pswitch_121  #00000004
        :pswitch_119  #00000005
        :pswitch_111  #00000006
        :pswitch_109  #00000007
        :pswitch_101  #00000008
        :pswitch_f9  #00000009
        :pswitch_f1  #0000000a
        :pswitch_e9  #0000000b
        :pswitch_e1  #0000000c
        :pswitch_d8  #0000000d
    .end packed-switch
.end method
