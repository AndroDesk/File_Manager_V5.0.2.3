.class public Lmiuix/preference/TextPreference;
.super Landroidx/preference/Preference;
.source "TextPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/preference/TextPreference$TextProvider;
    }
.end annotation


# instance fields
.field private mText:Ljava/lang/CharSequence;

.field private mTextProvider:Lmiuix/preference/TextPreference$TextProvider;

.field private mTextRes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, v0}, Lmiuix/preference/TextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 11
    sget v0, Lmiuix/preference/R$attr;->textPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/preference/TextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 10
    sget v0, Lmiuix/preference/R$style;->Miuix_Preference_TextPreference:I

    invoke-direct {p0, p1, p2, p3, v0}, Lmiuix/preference/TextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    sget-object v0, Lmiuix/preference/R$styleable;->TextPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 3
    sget p3, Lmiuix/preference/R$styleable;->TextPreference_android_text:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    .line 4
    sget p4, Lmiuix/preference/R$styleable;->TextPreference_textProvider:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 5
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 6
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_25

    .line 7
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    .line 8
    :cond_25
    invoke-direct {p0, p1, p4}, Lmiuix/preference/TextPreference;->createTextProvider(Landroid/content/Context;Ljava/lang/String;)Lmiuix/preference/TextPreference$TextProvider;

    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lmiuix/preference/TextPreference;->setTextProvider(Lmiuix/preference/TextPreference$TextProvider;)V

    return-void
.end method

.method private createTextProvider(Landroid/content/Context;Ljava/lang/String;)Lmiuix/preference/TextPreference$TextProvider;
    .registers 6

    .line 1
    const-string v0, "Could not instantiate the TextProvider: "

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_67

    .line 9
    :try_start_8
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 16
    move-result-object p1

    .line 17
    const-class v1, Lmiuix/preference/TextPreference$TextProvider;

    .line 19
    invoke-virtual {p1, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 22
    move-result-object p1

    .line 23
    const/4 v1, 0x0

    .line 24
    new-array v2, v1, [Ljava/lang/Class;

    .line 26
    invoke-virtual {p1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 29
    move-result-object p1

    .line 30
    const/4 v2, 0x1

    .line 31
    invoke-virtual {p1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 34
    new-array v1, v1, [Ljava/lang/Object;

    .line 36
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Lmiuix/preference/TextPreference$TextProvider;
    :try_end_29
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_29} :catch_5a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_29} :catch_4d
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_29} :catch_40
    .catch Ljava/lang/InstantiationException; {:try_start_8 .. :try_end_29} :catch_35
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_29} :catch_2a

    .line 42
    goto :goto_68

    .line 43
    :catch_2a
    move-exception p1

    .line 44
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 46
    invoke-static {v0, p2}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object p2

    .line 50
    invoke-direct {v1, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    throw v1

    .line 54
    :catch_35
    move-exception p1

    .line 55
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 57
    invoke-static {v0, p2}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    move-result-object p2

    .line 61
    invoke-direct {v1, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    throw v1

    .line 65
    :catch_40
    move-exception p1

    .line 66
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 68
    const-string v1, "Can\'t access non-public constructor "

    .line 70
    invoke-static {v1, p2}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    move-result-object p2

    .line 74
    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    throw v0

    .line 78
    :catch_4d
    move-exception p1

    .line 79
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 81
    const-string v1, "Error creating TextProvider "

    .line 83
    invoke-static {v1, p2}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    move-result-object p2

    .line 87
    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    throw v0

    .line 91
    :catch_5a
    move-exception p1

    .line 92
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 94
    const-string v1, "Can\'t find provider: "

    .line 96
    invoke-static {v1, p2}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    move-result-object p2

    .line 100
    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    throw v0

    .line 104
    :cond_67
    const/4 p1, 0x0

    .line 105
    :goto_68
    return-object p1
.end method


# virtual methods
.method public getText()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/preference/TextPreference;->getTextProvider()Lmiuix/preference/TextPreference$TextProvider;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_f

    .line 7
    invoke-virtual {p0}, Lmiuix/preference/TextPreference;->getTextProvider()Lmiuix/preference/TextPreference$TextProvider;

    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0, p0}, Lmiuix/preference/TextPreference$TextProvider;->provideText(Lmiuix/preference/TextPreference;)Ljava/lang/CharSequence;

    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_f
    iget-object v0, p0, Lmiuix/preference/TextPreference;->mText:Ljava/lang/CharSequence;

    .line 18
    return-object v0
.end method

.method public final getTextProvider()Lmiuix/preference/TextPreference$TextProvider;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/preference/TextPreference;->mTextProvider:Lmiuix/preference/TextPreference$TextProvider;

    .line 3
    return-object v0
.end method

.method public onBindViewHolder(Landroidx/preference/h;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/h;)V

    .line 4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 6
    sget v0, Lmiuix/preference/R$id;->text_right:I

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Landroid/widget/TextView;

    .line 14
    if-eqz p1, :cond_26

    .line 16
    invoke-virtual {p0}, Lmiuix/preference/TextPreference;->getText()Ljava/lang/CharSequence;

    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_21

    .line 26
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 33
    goto :goto_26

    .line 34
    :cond_21
    const/16 v0, 0x8

    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 39
    :cond_26
    :goto_26
    return-void
.end method

.method public setText(I)V
    .registers 3

    .line 7
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    .line 8
    iput p1, p0, Lmiuix/preference/TextPreference;->mTextRes:I

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/preference/TextPreference;->getTextProvider()Lmiuix/preference/TextPreference$TextProvider;

    move-result-object v0

    if-nez v0, :cond_17

    .line 2
    iget-object v0, p0, Lmiuix/preference/TextPreference;->mText:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lmiuix/preference/TextPreference;->mTextRes:I

    .line 4
    iput-object p1, p0, Lmiuix/preference/TextPreference;->mText:Ljava/lang/CharSequence;

    .line 5
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_16
    return-void

    .line 6
    :cond_17
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Preference already has a TextProvider set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setTextProvider(Lmiuix/preference/TextPreference$TextProvider;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/preference/TextPreference;->mTextProvider:Lmiuix/preference/TextPreference$TextProvider;

    .line 3
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 6
    return-void
.end method
