.class public Lmiuix/preference/DropDownPreference;
.super Landroidx/preference/Preference;
.source "DropDownPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;,
        Lmiuix/preference/DropDownPreference$PreferenceCheckedProvider;,
        Lmiuix/preference/DropDownPreference$SavedState;
    }
.end annotation


# static fields
.field private static final ADAPTER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final EMPTY:[Ljava/lang/CharSequence;

.field private static final TAG:Ljava/lang/String; = "DropDownPreference"


# instance fields
.field private mAdapter:Landroid/widget/ArrayAdapter;

.field private mContentAdapter:Landroid/widget/ArrayAdapter;

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryIcons:[Landroid/graphics/drawable/Drawable;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private final mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mNotifyHandler:Landroid/os/Handler;

.field private mSpinner:Lmiuix/appcompat/widget/Spinner;

.field private mValue:Ljava/lang/String;

.field private mValueSet:Z


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
    const/4 v1, 0x1

    .line 10
    const-class v3, Landroid/util/AttributeSet;

    .line 12
    aput-object v3, v0, v1

    .line 14
    sput-object v0, Lmiuix/preference/DropDownPreference;->ADAPTER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 16
    new-array v0, v2, [Ljava/lang/CharSequence;

    .line 18
    sput-object v0, Lmiuix/preference/DropDownPreference;->EMPTY:[Ljava/lang/CharSequence;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/preference/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 2
    sget v0, Lmiuix/preference/R$attr;->dropdownPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/preference/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lmiuix/preference/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmiuix/preference/DropDownPreference;->mNotifyHandler:Landroid/os/Handler;

    .line 6
    new-instance v0, Lmiuix/preference/DropDownPreference$1;

    invoke-direct {v0, p0}, Lmiuix/preference/DropDownPreference$1;-><init>(Lmiuix/preference/DropDownPreference;)V

    iput-object v0, p0, Lmiuix/preference/DropDownPreference;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 7
    sget-object v0, Lmiuix/preference/R$styleable;->DropDownPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 8
    sget v1, Lmiuix/preference/R$styleable;->DropDownPreference_adapter:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 11
    invoke-direct {p0, p1, p2, v1}, Lmiuix/preference/DropDownPreference;->initAdapter(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Landroid/widget/ArrayAdapter;

    move-result-object p1

    iput-object p1, p0, Lmiuix/preference/DropDownPreference;->mContentAdapter:Landroid/widget/ArrayAdapter;

    goto :goto_34

    .line 12
    :cond_2d
    new-instance v0, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;

    invoke-direct {v0, p1, p2, p3, p4}, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lmiuix/preference/DropDownPreference;->mContentAdapter:Landroid/widget/ArrayAdapter;

    .line 13
    :goto_34
    invoke-virtual {p0}, Lmiuix/preference/DropDownPreference;->createAdapter()Landroid/widget/ArrayAdapter;

    move-result-object p1

    iput-object p1, p0, Lmiuix/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 14
    invoke-direct {p0}, Lmiuix/preference/DropDownPreference;->constructEntries()V

    return-void
.end method

.method public static synthetic access$000(Lmiuix/preference/DropDownPreference;)[Ljava/lang/CharSequence;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/preference/DropDownPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lmiuix/preference/DropDownPreference;)Landroid/os/Handler;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/preference/DropDownPreference;->mNotifyHandler:Landroid/os/Handler;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lmiuix/preference/DropDownPreference;)Landroid/widget/ArrayAdapter;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lmiuix/preference/DropDownPreference;)Landroid/widget/AdapterView$OnItemSelectedListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/preference/DropDownPreference;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lmiuix/preference/DropDownPreference;)Lmiuix/appcompat/widget/Spinner;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/preference/DropDownPreference;->mSpinner:Lmiuix/appcompat/widget/Spinner;

    .line 3
    return-object p0
.end method

.method private constructEntries()V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mContentAdapter:Landroid/widget/ArrayAdapter;

    .line 3
    instance-of v1, v0, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;

    .line 5
    if-eqz v1, :cond_23

    .line 7
    check-cast v0, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;

    .line 9
    invoke-virtual {v0}, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->getEntries()[Ljava/lang/CharSequence;

    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lmiuix/preference/DropDownPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 15
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mContentAdapter:Landroid/widget/ArrayAdapter;

    .line 17
    check-cast v0, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;

    .line 19
    invoke-virtual {v0}, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;->getEntryValues()[Ljava/lang/CharSequence;

    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lmiuix/preference/DropDownPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 25
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mContentAdapter:Landroid/widget/ArrayAdapter;

    .line 27
    check-cast v0, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;

    .line 29
    invoke-virtual {v0}, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->getEntryIcons()[Landroid/graphics/drawable/Drawable;

    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lmiuix/preference/DropDownPreference;->mEntryIcons:[Landroid/graphics/drawable/Drawable;

    .line 35
    goto :goto_4c

    .line 36
    :cond_23
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    .line 39
    move-result v0

    .line 40
    iget-object v1, p0, Lmiuix/preference/DropDownPreference;->mContentAdapter:Landroid/widget/ArrayAdapter;

    .line 42
    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    .line 45
    move-result v1

    .line 46
    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 48
    iput-object v1, p0, Lmiuix/preference/DropDownPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 50
    const/4 v1, 0x0

    .line 51
    :goto_32
    if-ge v1, v0, :cond_45

    .line 53
    iget-object v2, p0, Lmiuix/preference/DropDownPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 55
    iget-object v3, p0, Lmiuix/preference/DropDownPreference;->mContentAdapter:Landroid/widget/ArrayAdapter;

    .line 57
    invoke-virtual {v3, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 64
    move-result-object v3

    .line 65
    aput-object v3, v2, v1

    .line 67
    add-int/lit8 v1, v1, 0x1

    .line 69
    goto :goto_32

    .line 70
    :cond_45
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 72
    iput-object v0, p0, Lmiuix/preference/DropDownPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 74
    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lmiuix/preference/DropDownPreference;->mEntryIcons:[Landroid/graphics/drawable/Drawable;

    .line 77
    :goto_4c
    return-void
.end method

.method private disableSpinnerClick(Lmiuix/appcompat/widget/Spinner;)V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setContextClickable(Z)V

    .line 11
    return-void
.end method

.method private findSpinnerIndexOfValue(Ljava/lang/String;)I
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 3
    if-eqz v0, :cond_16

    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_5
    iget-object v1, p0, Lmiuix/preference/DropDownPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 8
    array-length v2, v1

    .line 9
    if-ge v0, v2, :cond_16

    .line 11
    aget-object v1, v1, v0

    .line 13
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_13

    .line 19
    return v0

    .line 20
    :cond_13
    add-int/lit8 v0, v0, 0x1

    .line 22
    goto :goto_5

    .line 23
    :cond_16
    const/4 p1, -0x1

    .line 24
    return p1
.end method

.method private initAdapter(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Landroid/widget/ArrayAdapter;
    .registers 7

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    move-result-object v0

    .line 9
    const-class v1, Landroid/widget/ArrayAdapter;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Lmiuix/preference/DropDownPreference;->ADAPTER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x2

    .line 22
    new-array v1, v1, [Ljava/lang/Object;

    .line 24
    const/4 v2, 0x0

    .line 25
    aput-object p1, v1, v2

    .line 27
    const/4 p1, 0x1

    .line 28
    aput-object p2, v1, p1

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Landroid/widget/ArrayAdapter;
    :try_end_26
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_26} :catch_50
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_26} :catch_43
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_26} :catch_41
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_26} :catch_34
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_26} :catch_27

    .line 39
    return-object p1

    .line 40
    :catch_27
    move-exception p1

    .line 41
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 43
    const-string v0, "Can\'t find Adapter: "

    .line 45
    invoke-static {v0, p3}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    move-result-object p3

    .line 49
    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    throw p2

    .line 53
    :catch_34
    move-exception p1

    .line 54
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 56
    const-string v0, "Can\'t access non-public constructor "

    .line 58
    invoke-static {v0, p3}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    move-result-object p3

    .line 62
    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    throw p2

    .line 66
    :catch_41
    move-exception p1

    .line 67
    goto :goto_44

    .line 68
    :catch_43
    move-exception p1

    .line 69
    :goto_44
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 71
    const-string v0, "Could not instantiate the Adapter: "

    .line 73
    invoke-static {v0, p3}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    move-result-object p3

    .line 77
    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    throw p2

    .line 81
    :catch_50
    move-exception p1

    .line 82
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 84
    const-string v0, "Error creating Adapter "

    .line 86
    invoke-static {v0, p3}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    move-result-object p3

    .line 90
    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    throw p2
.end method


# virtual methods
.method public createAdapter()Landroid/widget/ArrayAdapter;
    .registers 5

    .line 1
    new-instance v0, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;

    .line 3
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lmiuix/preference/DropDownPreference;->mContentAdapter:Landroid/widget/ArrayAdapter;

    .line 9
    new-instance v3, Lmiuix/preference/DropDownPreference$PreferenceCheckedProvider;

    .line 11
    invoke-direct {v3, p0, v2}, Lmiuix/preference/DropDownPreference$PreferenceCheckedProvider;-><init>(Lmiuix/preference/DropDownPreference;Landroid/widget/ArrayAdapter;)V

    .line 14
    invoke-direct {v0, v1, v2, v3}, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;-><init>(Landroid/content/Context;Landroid/widget/ArrayAdapter;Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$CheckedStateProvider;)V

    .line 17
    return-object v0
.end method

.method public findIndexOfValue(Ljava/lang/String;)I
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/preference/DropDownPreference;->findSpinnerIndexOfValue(Ljava/lang/String;)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 3
    return-object v0
.end method

.method public getEntryIcons()[Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mEntryIcons:[Landroid/graphics/drawable/Drawable;

    .line 3
    return-object v0
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mContentAdapter:Landroid/widget/ArrayAdapter;

    .line 3
    instance-of v1, v0, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;

    .line 5
    if-eqz v1, :cond_d

    .line 7
    check-cast v0, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;

    .line 9
    invoke-virtual {v0}, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;->getEntryValues()[Ljava/lang/CharSequence;

    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_d
    sget-object v0, Lmiuix/preference/DropDownPreference;->EMPTY:[Ljava/lang/CharSequence;

    .line 16
    return-object v0
.end method

.method public getSummaries()[Ljava/lang/CharSequence;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mContentAdapter:Landroid/widget/ArrayAdapter;

    .line 3
    instance-of v1, v0, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;

    .line 5
    if-eqz v1, :cond_b

    .line 7
    check-cast v0, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;

    .line 9
    invoke-virtual {v0}, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->getSummaries()[Ljava/lang/CharSequence;

    .line 12
    :cond_b
    sget-object v0, Lmiuix/preference/DropDownPreference;->EMPTY:[Ljava/lang/CharSequence;

    .line 14
    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mValue:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getValueIndex()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mValue:Ljava/lang/String;

    .line 3
    invoke-virtual {p0, v0}, Lmiuix/preference/DropDownPreference;->findIndexOfValue(Ljava/lang/String;)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public notifyChanged()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 4
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 6
    if-eqz v0, :cond_11

    .line 8
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mNotifyHandler:Landroid/os/Handler;

    .line 10
    new-instance v1, Lmiuix/preference/DropDownPreference$2;

    .line 12
    invoke-direct {v1, p0}, Lmiuix/preference/DropDownPreference$2;-><init>(Lmiuix/preference/DropDownPreference;)V

    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    :cond_11
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/h;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 3
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_55

    .line 9
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 11
    sget v1, Lmiuix/preference/R$id;->spinner:I

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lmiuix/appcompat/widget/Spinner;

    .line 19
    iput-object v0, p0, Lmiuix/preference/DropDownPreference;->mSpinner:Lmiuix/appcompat/widget/Spinner;

    .line 21
    const/4 v1, 0x2

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 25
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mSpinner:Lmiuix/appcompat/widget/Spinner;

    .line 27
    invoke-direct {p0, v0}, Lmiuix/preference/DropDownPreference;->disableSpinnerClick(Lmiuix/appcompat/widget/Spinner;)V

    .line 30
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mSpinner:Lmiuix/appcompat/widget/Spinner;

    .line 32
    iget-object v1, p0, Lmiuix/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 34
    invoke-virtual {v0, v1}, Lmiuix/appcompat/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 37
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mSpinner:Lmiuix/appcompat/widget/Spinner;

    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 43
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mSpinner:Lmiuix/appcompat/widget/Spinner;

    .line 45
    invoke-virtual {p0}, Lmiuix/preference/DropDownPreference;->getValue()Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    invoke-direct {p0, v1}, Lmiuix/preference/DropDownPreference;->findSpinnerIndexOfValue(Ljava/lang/String;)I

    .line 52
    move-result v1

    .line 53
    invoke-virtual {v0, v1}, Lmiuix/appcompat/widget/Spinner;->setSelection(I)V

    .line 56
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mSpinner:Lmiuix/appcompat/widget/Spinner;

    .line 58
    new-instance v1, Lmiuix/preference/DropDownPreference$3;

    .line 60
    invoke-direct {v1, p0}, Lmiuix/preference/DropDownPreference$3;-><init>(Lmiuix/preference/DropDownPreference;)V

    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 66
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mSpinner:Lmiuix/appcompat/widget/Spinner;

    .line 68
    new-instance v1, Lmiuix/preference/DropDownPreference$4;

    .line 70
    invoke-direct {v1, p0, p1}, Lmiuix/preference/DropDownPreference$4;-><init>(Lmiuix/preference/DropDownPreference;Landroidx/preference/h;)V

    .line 73
    invoke-virtual {v0, v1}, Lmiuix/appcompat/widget/Spinner;->setOnSpinnerDismissListener(Lmiuix/appcompat/widget/Spinner$OnSpinnerDismissListener;)V

    .line 76
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 78
    new-instance v1, Lmiuix/preference/DropDownPreference$5;

    .line 80
    invoke-direct {v1, p0, p1}, Lmiuix/preference/DropDownPreference$5;-><init>(Lmiuix/preference/DropDownPreference;Landroidx/preference/h;)V

    .line 83
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 86
    :cond_55
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/h;)V

    .line 89
    return-void
.end method

.method public onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    .line 1
    if-eqz p1, :cond_1e

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 7
    const-class v1, Lmiuix/preference/DropDownPreference$SavedState;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_f

    .line 15
    goto :goto_1e

    .line 16
    :cond_f
    check-cast p1, Lmiuix/preference/DropDownPreference$SavedState;

    .line 18
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 21
    move-result-object v0

    .line 22
    invoke-super {p0, v0}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 25
    iget-object p1, p1, Lmiuix/preference/DropDownPreference$SavedState;->mValue:Ljava/lang/String;

    .line 27
    invoke-virtual {p0, p1}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 30
    return-void

    .line 31
    :cond_1e
    :goto_1e
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 34
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 1
    invoke-super {p0}, Landroidx/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/preference/Preference;->isPersistent()Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_b

    .line 11
    return-object v0

    .line 12
    :cond_b
    new-instance v1, Lmiuix/preference/DropDownPreference$SavedState;

    .line 14
    invoke-direct {v1, v0}, Lmiuix/preference/DropDownPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 17
    invoke-virtual {p0}, Lmiuix/preference/DropDownPreference;->getValue()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    iput-object v0, v1, Lmiuix/preference/DropDownPreference$SavedState;->mValue:Ljava/lang/String;

    .line 23
    return-object v1
.end method

.method public onSetInitialValue(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 3
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method public performClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lmiuix/preference/DropDownPreference;->mSpinner:Lmiuix/appcompat/widget/Spinner;

    .line 3
    if-eqz p1, :cond_e

    .line 5
    invoke-virtual {p1}, Lmiuix/appcompat/widget/Spinner;->performClick()Z

    .line 8
    const-string p1, "DropDownPreference"

    .line 10
    const-string v0, "trigger from perform click"

    .line 12
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :cond_e
    return-void
.end method

.method public setAdapter(Landroid/widget/ArrayAdapter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/preference/DropDownPreference;->mContentAdapter:Landroid/widget/ArrayAdapter;

    .line 3
    invoke-virtual {p0}, Lmiuix/preference/DropDownPreference;->createAdapter()Landroid/widget/ArrayAdapter;

    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lmiuix/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 9
    invoke-direct {p0}, Lmiuix/preference/DropDownPreference;->constructEntries()V

    .line 12
    return-void
.end method

.method public setEntries(I)V
    .registers 3

    .line 10
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lmiuix/preference/DropDownPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 2
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mContentAdapter:Landroid/widget/ArrayAdapter;

    instance-of v1, v0, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;

    if-eqz v1, :cond_e

    .line 3
    check-cast v0, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->setEntries([Ljava/lang/CharSequence;)V

    goto :goto_1a

    .line 4
    :cond_e
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 5
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mContentAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->addAll([Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lmiuix/preference/DropDownPreference;->mEntries:[Ljava/lang/CharSequence;

    iput-object p1, p0, Lmiuix/preference/DropDownPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 7
    :goto_1a
    iget-object p1, p0, Lmiuix/preference/DropDownPreference;->mSpinner:Lmiuix/appcompat/widget/Spinner;

    if-eqz p1, :cond_29

    .line 8
    invoke-virtual {p0}, Lmiuix/preference/DropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiuix/preference/DropDownPreference;->findSpinnerIndexOfValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/widget/Spinner;->setSelection(I)V

    .line 9
    :cond_29
    invoke-virtual {p0}, Lmiuix/preference/DropDownPreference;->notifyChanged()V

    return-void
.end method

.method public setEntryIcons([I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mContentAdapter:Landroid/widget/ArrayAdapter;

    instance-of v1, v0, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;

    if-eqz v1, :cond_15

    .line 2
    check-cast v0, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->setEntryIcons([I)V

    .line 3
    iget-object p1, p0, Lmiuix/preference/DropDownPreference;->mContentAdapter:Landroid/widget/ArrayAdapter;

    check-cast p1, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;

    invoke-virtual {p1}, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->getEntryIcons()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiuix/preference/DropDownPreference;->mEntryIcons:[Landroid/graphics/drawable/Drawable;

    .line 4
    :cond_15
    invoke-virtual {p0}, Lmiuix/preference/DropDownPreference;->notifyChanged()V

    return-void
.end method

.method public setEntryIcons([Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 5
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mContentAdapter:Landroid/widget/ArrayAdapter;

    instance-of v1, v0, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;

    if-eqz v1, :cond_15

    .line 6
    check-cast v0, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->setEntryIcons([Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object p1, p0, Lmiuix/preference/DropDownPreference;->mContentAdapter:Landroid/widget/ArrayAdapter;

    check-cast p1, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;

    invoke-virtual {p1}, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->getEntryIcons()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiuix/preference/DropDownPreference;->mEntryIcons:[Landroid/graphics/drawable/Drawable;

    .line 8
    :cond_15
    invoke-virtual {p0}, Lmiuix/preference/DropDownPreference;->notifyChanged()V

    return-void
.end method

.method public setEntryValues(I)V
    .registers 3

    .line 5
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mContentAdapter:Landroid/widget/ArrayAdapter;

    instance-of v1, v0, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;

    if-eqz v1, :cond_12

    .line 2
    check-cast v0, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;

    invoke-virtual {v0, p1}, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 4
    iput-object p1, p0, Lmiuix/preference/DropDownPreference;->mEntryValues:[Ljava/lang/CharSequence;

    :cond_12
    return-void
.end method

.method public setSummaries([Ljava/lang/CharSequence;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mContentAdapter:Landroid/widget/ArrayAdapter;

    .line 3
    instance-of v1, v0, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;

    .line 5
    if-eqz v1, :cond_e

    .line 7
    check-cast v0, Lmiuix/preference/DropDownPreference$DropDownLayoutAdapter;

    .line 9
    invoke-virtual {v0, p1}, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->setSummaries([Ljava/lang/CharSequence;)V

    .line 12
    invoke-virtual {p0}, Lmiuix/preference/DropDownPreference;->notifyChanged()V

    .line 15
    :cond_e
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mValue:Ljava/lang/String;

    .line 3
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    xor-int/2addr v0, v1

    .line 9
    if-nez v0, :cond_e

    .line 11
    iget-boolean v2, p0, Lmiuix/preference/DropDownPreference;->mValueSet:Z

    .line 13
    if-nez v2, :cond_1a

    .line 15
    :cond_e
    iput-object p1, p0, Lmiuix/preference/DropDownPreference;->mValue:Ljava/lang/String;

    .line 17
    iput-boolean v1, p0, Lmiuix/preference/DropDownPreference;->mValueSet:Z

    .line 19
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistString(Ljava/lang/String;)Z

    .line 22
    if-eqz v0, :cond_1a

    .line 24
    invoke-virtual {p0}, Lmiuix/preference/DropDownPreference;->notifyChanged()V

    .line 27
    :cond_1a
    return-void
.end method

.method public setValueIndex(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 3
    aget-object v0, v0, p1

    .line 5
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->mSpinner:Lmiuix/appcompat/widget/Spinner;

    .line 14
    if-eqz v0, :cond_12

    .line 16
    invoke-virtual {v0, p1}, Lmiuix/appcompat/widget/Spinner;->setSelection(I)V

    .line 19
    :cond_12
    return-void
.end method
