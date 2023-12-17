.class public abstract Landroidx/preference/PreferenceFragmentCompat;
.super Landroidx/fragment/app/Fragment;
.source "PreferenceFragmentCompat.java"

# interfaces
.implements Landroidx/preference/f$c;
.implements Landroidx/preference/f$a;
.implements Landroidx/preference/f$b;
.implements Landroidx/preference/DialogPreference$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/PreferenceFragmentCompat$d;,
        Landroidx/preference/PreferenceFragmentCompat$h;,
        Landroidx/preference/PreferenceFragmentCompat$e;,
        Landroidx/preference/PreferenceFragmentCompat$g;,
        Landroidx/preference/PreferenceFragmentCompat$f;
    }
.end annotation


# static fields
.field public static final ARG_PREFERENCE_ROOT:Ljava/lang/String; = "androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

.field private static final DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "androidx.preference.PreferenceFragment.DIALOG"

.field private static final MSG_BIND_PREFERENCES:I = 0x1

.field private static final PREFERENCES_TAG:Ljava/lang/String; = "android:preferences"

.field private static final TAG:Ljava/lang/String; = "PreferenceFragment"


# instance fields
.field private final mDividerDecoration:Landroidx/preference/PreferenceFragmentCompat$d;

.field private final mHandler:Landroid/os/Handler;

.field private mHavePrefs:Z

.field private mInitDone:Z

.field private mLayoutResId:I

.field public mList:Landroidx/recyclerview/widget/RecyclerView;

.field private mPreferenceManager:Landroidx/preference/f;

.field private final mRequestFocus:Ljava/lang/Runnable;

.field private mSelectPreferenceRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 4
    new-instance v0, Landroidx/preference/PreferenceFragmentCompat$d;

    .line 6
    invoke-direct {v0, p0}, Landroidx/preference/PreferenceFragmentCompat$d;-><init>(Landroidx/preference/PreferenceFragmentCompat;)V

    .line 9
    iput-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mDividerDecoration:Landroidx/preference/PreferenceFragmentCompat$d;

    .line 11
    sget v0, Landroidx/preference/n;->preference_list_fragment:I

    .line 13
    iput v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mLayoutResId:I

    .line 15
    new-instance v0, Landroidx/preference/PreferenceFragmentCompat$a;

    .line 17
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 20
    move-result-object v1

    .line 21
    invoke-direct {v0, p0, v1}, Landroidx/preference/PreferenceFragmentCompat$a;-><init>(Landroidx/preference/PreferenceFragmentCompat;Landroid/os/Looper;)V

    .line 24
    iput-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mHandler:Landroid/os/Handler;

    .line 26
    new-instance v0, Landroidx/preference/PreferenceFragmentCompat$b;

    .line 28
    invoke-direct {v0, p0}, Landroidx/preference/PreferenceFragmentCompat$b;-><init>(Landroidx/preference/PreferenceFragmentCompat;)V

    .line 31
    iput-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mRequestFocus:Ljava/lang/Runnable;

    .line 33
    return-void
.end method

.method private postBindPreferences()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mHandler:Landroid/os/Handler;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_a

    .line 10
    return-void

    .line 11
    :cond_a
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mHandler:Landroid/os/Handler;

    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 20
    return-void
.end method

.method private requirePreferenceManager()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/f;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    .line 8
    const-string v1, "This should be called after super.onCreate."

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 13
    throw v0
.end method

.method private scrollToPreferenceInternal(Landroidx/preference/Preference;Ljava/lang/String;)V
    .registers 4

    .line 1
    new-instance v0, Landroidx/preference/PreferenceFragmentCompat$c;

    .line 3
    invoke-direct {v0, p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat$c;-><init>(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    if-nez p1, :cond_c

    .line 10
    iput-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    .line 12
    goto :goto_f

    .line 13
    :cond_c
    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat$c;->run()V

    .line 16
    :goto_f
    return-void
.end method

.method private unbindPreferences()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 9
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_11

    .line 15
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->onDetached()V

    .line 18
    :cond_11
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->onUnbindPreferences()V

    .line 21
    return-void
.end method


# virtual methods
.method public addPreferencesFromResource(I)V
    .registers 5

    .line 1
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;->requirePreferenceManager()V

    .line 4
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/f;

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v0, v1, p1, v2}, Landroidx/preference/f;->c(Landroid/content/Context;ILandroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;

    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    .line 21
    return-void
.end method

.method public bindPreferences()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_14

    .line 7
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 18
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->onAttached()V

    .line 21
    :cond_14
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->onBindPreferences()V

    .line 24
    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/preference/Preference;",
            ">(",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/f;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return-object v1

    .line 7
    :cond_6
    iget-object v0, v0, Landroidx/preference/f;->g:Landroidx/preference/PreferenceScreen;

    .line 9
    if-nez v0, :cond_b

    .line 11
    goto :goto_f

    .line 12
    :cond_b
    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 15
    move-result-object v1

    .line 16
    :goto_f
    return-object v1
.end method

.method public getCallbackFragment()Landroidx/fragment/app/Fragment;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getListView()Landroidx/recyclerview/widget/RecyclerView;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    return-object v0
.end method

.method public getPreferenceManager()Landroidx/preference/f;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/f;

    .line 3
    return-object v0
.end method

.method public getPreferenceScreen()Landroidx/preference/PreferenceScreen;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/f;

    .line 3
    iget-object v0, v0, Landroidx/preference/f;->g:Landroidx/preference/PreferenceScreen;

    .line 5
    return-object v0
.end method

.method public onBindPreferences()V
    .registers 1

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    new-instance v0, Landroid/util/TypedValue;

    .line 6
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 16
    move-result-object v1

    .line 17
    sget v2, Landroidx/preference/i;->preferenceTheme:I

    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 23
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    .line 25
    if-nez v0, :cond_1c

    .line 27
    sget v0, Landroidx/preference/p;->PreferenceThemeOverlay:I

    .line 29
    :cond_1c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 36
    move-result-object v1

    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 41
    new-instance v0, Landroidx/preference/f;

    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 46
    move-result-object v1

    .line 47
    invoke-direct {v0, v1}, Landroidx/preference/f;-><init>(Landroid/content/Context;)V

    .line 50
    iput-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/f;

    .line 52
    invoke-virtual {v0, p0}, Landroidx/preference/f;->setOnNavigateToScreenListener(Landroidx/preference/f$b;)V

    .line 55
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 58
    move-result-object v0

    .line 59
    if-eqz v0, :cond_47

    .line 61
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 64
    move-result-object v0

    .line 65
    const-string v1, "androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

    .line 67
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 71
    goto :goto_48

    .line 72
    :cond_47
    const/4 v0, 0x0

    .line 73
    :goto_48
    invoke-virtual {p0, p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .registers 3

    .line 1
    new-instance v0, Landroidx/preference/c;

    .line 3
    invoke-direct {v0, p1}, Landroidx/preference/c;-><init>(Landroidx/preference/PreferenceGroup;)V

    .line 6
    return-object v0
.end method

.method public onCreateLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .registers 3

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 10
    return-object v0
.end method

.method public abstract onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    move-result-object p3

    .line 5
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    move-result-object p3

    .line 9
    const-string v0, "android.hardware.type.automotive"

    .line 11
    invoke-virtual {p3, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 14
    move-result p3

    .line 15
    if-eqz p3, :cond_1b

    .line 17
    sget p3, Landroidx/preference/l;->recycler_view:I

    .line 19
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object p3

    .line 23
    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    if-eqz p3, :cond_1b

    .line 27
    return-object p3

    .line 28
    :cond_1b
    sget p3, Landroidx/preference/n;->preference_recyclerview:I

    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 37
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->onCreateLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 44
    new-instance p2, Landroidx/preference/g;

    .line 46
    invoke-direct {p2, p1}, Landroidx/preference/g;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 49
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroidx/recyclerview/widget/r;)V

    .line 52
    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Landroidx/preference/q;->PreferenceFragmentCompat:[I

    .line 7
    sget v2, Landroidx/preference/i;->preferenceFragmentCompatStyle:I

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 14
    move-result-object v0

    .line 15
    sget v1, Landroidx/preference/q;->PreferenceFragmentCompat_android_layout:I

    .line 17
    iget v2, p0, Landroidx/preference/PreferenceFragmentCompat;->mLayoutResId:I

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 22
    move-result v1

    .line 23
    iput v1, p0, Landroidx/preference/PreferenceFragmentCompat;->mLayoutResId:I

    .line 25
    sget v1, Landroidx/preference/q;->PreferenceFragmentCompat_android_divider:I

    .line 27
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 30
    move-result-object v1

    .line 31
    sget v2, Landroidx/preference/q;->PreferenceFragmentCompat_android_dividerHeight:I

    .line 33
    const/4 v3, -0x1

    .line 34
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 37
    move-result v2

    .line 38
    sget v5, Landroidx/preference/q;->PreferenceFragmentCompat_allowDividerAfterLastItem:I

    .line 40
    const/4 v6, 0x1

    .line 41
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 44
    move-result v5

    .line 45
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 48
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 55
    move-result-object p1

    .line 56
    iget v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mLayoutResId:I

    .line 58
    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 61
    move-result-object p2

    .line 62
    const v0, 0x102003f

    .line 65
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    move-result-object v0

    .line 69
    instance-of v4, v0, Landroid/view/ViewGroup;

    .line 71
    if-eqz v4, :cond_80

    .line 73
    check-cast v0, Landroid/view/ViewGroup;

    .line 75
    invoke-virtual {p0, p1, v0, p3}, Landroidx/preference/PreferenceFragmentCompat;->onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;

    .line 78
    move-result-object p1

    .line 79
    if-eqz p1, :cond_78

    .line 81
    iput-object p1, p0, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    .line 83
    iget-object p3, p0, Landroidx/preference/PreferenceFragmentCompat;->mDividerDecoration:Landroidx/preference/PreferenceFragmentCompat$d;

    .line 85
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 88
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 91
    if-eq v2, v3, :cond_5f

    .line 93
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->setDividerHeight(I)V

    .line 96
    :cond_5f
    iget-object p1, p0, Landroidx/preference/PreferenceFragmentCompat;->mDividerDecoration:Landroidx/preference/PreferenceFragmentCompat$d;

    .line 98
    iput-boolean v5, p1, Landroidx/preference/PreferenceFragmentCompat$d;->c:Z

    .line 100
    iget-object p1, p0, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 105
    move-result-object p1

    .line 106
    if-nez p1, :cond_70

    .line 108
    iget-object p1, p0, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    .line 110
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 113
    :cond_70
    iget-object p1, p0, Landroidx/preference/PreferenceFragmentCompat;->mHandler:Landroid/os/Handler;

    .line 115
    iget-object p3, p0, Landroidx/preference/PreferenceFragmentCompat;->mRequestFocus:Ljava/lang/Runnable;

    .line 117
    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 120
    return-object p2

    .line 121
    :cond_78
    new-instance p1, Ljava/lang/RuntimeException;

    .line 123
    const-string p2, "Could not create RecyclerView"

    .line 125
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 128
    throw p1

    .line 129
    :cond_80
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 131
    const-string p2, "Content has view with id attribute \'android.R.id.list_container\' that is not a ViewGroup class"

    .line 133
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 136
    throw p1
.end method

.method public onDestroyView()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mHandler:Landroid/os/Handler;

    .line 3
    iget-object v1, p0, Landroidx/preference/PreferenceFragmentCompat;->mRequestFocus:Ljava/lang/Runnable;

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mHandler:Landroid/os/Handler;

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 14
    iget-boolean v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mHavePrefs:Z

    .line 16
    if-eqz v0, :cond_14

    .line 18
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;->unbindPreferences()V

    .line 21
    :cond_14
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    .line 24
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 27
    return-void
.end method

.method public onDisplayPreferenceDialog(Landroidx/preference/Preference;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getCallbackFragment()Landroidx/fragment/app/Fragment;

    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Landroidx/preference/PreferenceFragmentCompat$e;

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_14

    .line 10
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getCallbackFragment()Landroidx/fragment/app/Fragment;

    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroidx/preference/PreferenceFragmentCompat$e;

    .line 16
    invoke-interface {v0}, Landroidx/preference/PreferenceFragmentCompat$e;->a()Z

    .line 19
    move-result v0

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    move v0, v1

    .line 22
    :goto_15
    move-object v2, p0

    .line 23
    :goto_16
    if-nez v0, :cond_2a

    .line 25
    if-eqz v2, :cond_2a

    .line 27
    instance-of v3, v2, Landroidx/preference/PreferenceFragmentCompat$e;

    .line 29
    if-eqz v3, :cond_25

    .line 31
    move-object v0, v2

    .line 32
    check-cast v0, Landroidx/preference/PreferenceFragmentCompat$e;

    .line 34
    invoke-interface {v0}, Landroidx/preference/PreferenceFragmentCompat$e;->a()Z

    .line 37
    move-result v0

    .line 38
    :cond_25
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 41
    move-result-object v2

    .line 42
    goto :goto_16

    .line 43
    :cond_2a
    if-nez v0, :cond_3e

    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 48
    move-result-object v2

    .line 49
    instance-of v2, v2, Landroidx/preference/PreferenceFragmentCompat$e;

    .line 51
    if-eqz v2, :cond_3e

    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Landroidx/preference/PreferenceFragmentCompat$e;

    .line 59
    invoke-interface {v0}, Landroidx/preference/PreferenceFragmentCompat$e;->a()Z

    .line 62
    move-result v0

    .line 63
    :cond_3e
    if-nez v0, :cond_52

    .line 65
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 68
    move-result-object v2

    .line 69
    instance-of v2, v2, Landroidx/preference/PreferenceFragmentCompat$e;

    .line 71
    if-eqz v2, :cond_52

    .line 73
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Landroidx/preference/PreferenceFragmentCompat$e;

    .line 79
    invoke-interface {v0}, Landroidx/preference/PreferenceFragmentCompat$e;->a()Z

    .line 82
    move-result v0

    .line 83
    :cond_52
    if-eqz v0, :cond_55

    .line 85
    return-void

    .line 86
    :cond_55
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 89
    move-result-object v0

    .line 90
    const-string v2, "androidx.preference.PreferenceFragment.DIALOG"

    .line 92
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 95
    move-result-object v0

    .line 96
    if-eqz v0, :cond_62

    .line 98
    return-void

    .line 99
    :cond_62
    instance-of v0, p1, Landroidx/preference/EditTextPreference;

    .line 101
    if-eqz v0, :cond_6f

    .line 103
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    .line 106
    move-result-object p1

    .line 107
    invoke-static {p1}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->newInstance(Ljava/lang/String;)Landroidx/preference/EditTextPreferenceDialogFragmentCompat;

    .line 110
    move-result-object p1

    .line 111
    goto :goto_88

    .line 112
    :cond_6f
    instance-of v0, p1, Landroidx/preference/ListPreference;

    .line 114
    if-eqz v0, :cond_7c

    .line 116
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    .line 119
    move-result-object p1

    .line 120
    invoke-static {p1}, Landroidx/preference/ListPreferenceDialogFragmentCompat;->newInstance(Ljava/lang/String;)Landroidx/preference/ListPreferenceDialogFragmentCompat;

    .line 123
    move-result-object p1

    .line 124
    goto :goto_88

    .line 125
    :cond_7c
    instance-of v0, p1, Landroidx/preference/MultiSelectListPreference;

    .line 127
    if-eqz v0, :cond_93

    .line 129
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    .line 132
    move-result-object p1

    .line 133
    invoke-static {p1}, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->newInstance(Ljava/lang/String;)Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;

    .line 136
    move-result-object p1

    .line 137
    :goto_88
    invoke-virtual {p1, p0, v1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 140
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {p1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 147
    return-void

    .line 148
    :cond_93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 150
    const-string v1, "Cannot display dialog for an unknown Preference type: "

    .line 152
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    move-result-object p1

    .line 160
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 163
    move-result-object p1

    .line 164
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const-string p1, ". Make sure to implement onPreferenceDisplayDialog() to handle displaying a custom dialog for this Preference."

    .line 169
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    move-result-object p1

    .line 176
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 179
    throw v0
.end method

.method public onNavigateToScreen(Landroidx/preference/PreferenceScreen;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getCallbackFragment()Landroidx/fragment/app/Fragment;

    .line 4
    move-result-object p1

    .line 5
    instance-of p1, p1, Landroidx/preference/PreferenceFragmentCompat$g;

    .line 7
    if-eqz p1, :cond_13

    .line 9
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getCallbackFragment()Landroidx/fragment/app/Fragment;

    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroidx/preference/PreferenceFragmentCompat$g;

    .line 15
    invoke-interface {p1}, Landroidx/preference/PreferenceFragmentCompat$g;->a()Z

    .line 18
    move-result p1

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    const/4 p1, 0x0

    .line 21
    :goto_14
    move-object v0, p0

    .line 22
    :goto_15
    if-nez p1, :cond_29

    .line 24
    if-eqz v0, :cond_29

    .line 26
    instance-of v1, v0, Landroidx/preference/PreferenceFragmentCompat$g;

    .line 28
    if-eqz v1, :cond_24

    .line 30
    move-object p1, v0

    .line 31
    check-cast p1, Landroidx/preference/PreferenceFragmentCompat$g;

    .line 33
    invoke-interface {p1}, Landroidx/preference/PreferenceFragmentCompat$g;->a()Z

    .line 36
    move-result p1

    .line 37
    :cond_24
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 40
    move-result-object v0

    .line 41
    goto :goto_15

    .line 42
    :cond_29
    if-nez p1, :cond_3d

    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 47
    move-result-object v0

    .line 48
    instance-of v0, v0, Landroidx/preference/PreferenceFragmentCompat$g;

    .line 50
    if-eqz v0, :cond_3d

    .line 52
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Landroidx/preference/PreferenceFragmentCompat$g;

    .line 58
    invoke-interface {p1}, Landroidx/preference/PreferenceFragmentCompat$g;->a()Z

    .line 61
    move-result p1

    .line 62
    :cond_3d
    if-nez p1, :cond_50

    .line 64
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 67
    move-result-object p1

    .line 68
    instance-of p1, p1, Landroidx/preference/PreferenceFragmentCompat$g;

    .line 70
    if-eqz p1, :cond_50

    .line 72
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Landroidx/preference/PreferenceFragmentCompat$g;

    .line 78
    invoke-interface {p1}, Landroidx/preference/PreferenceFragmentCompat$g;->a()Z

    .line 81
    :cond_50
    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_a2

    .line 8
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getCallbackFragment()Landroidx/fragment/app/Fragment;

    .line 11
    move-result-object v0

    .line 12
    instance-of v0, v0, Landroidx/preference/PreferenceFragmentCompat$f;

    .line 14
    if-eqz v0, :cond_1a

    .line 16
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getCallbackFragment()Landroidx/fragment/app/Fragment;

    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroidx/preference/PreferenceFragmentCompat$f;

    .line 22
    invoke-interface {v0, p0, p1}, Landroidx/preference/PreferenceFragmentCompat$f;->a(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)Z

    .line 25
    move-result v0

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    move v0, v1

    .line 28
    :goto_1b
    move-object v2, p0

    .line 29
    :goto_1c
    if-nez v0, :cond_30

    .line 31
    if-eqz v2, :cond_30

    .line 33
    instance-of v3, v2, Landroidx/preference/PreferenceFragmentCompat$f;

    .line 35
    if-eqz v3, :cond_2b

    .line 37
    move-object v0, v2

    .line 38
    check-cast v0, Landroidx/preference/PreferenceFragmentCompat$f;

    .line 40
    invoke-interface {v0, p0, p1}, Landroidx/preference/PreferenceFragmentCompat$f;->a(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)Z

    .line 43
    move-result v0

    .line 44
    :cond_2b
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 47
    move-result-object v2

    .line 48
    goto :goto_1c

    .line 49
    :cond_30
    if-nez v0, :cond_44

    .line 51
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 54
    move-result-object v2

    .line 55
    instance-of v2, v2, Landroidx/preference/PreferenceFragmentCompat$f;

    .line 57
    if-eqz v2, :cond_44

    .line 59
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Landroidx/preference/PreferenceFragmentCompat$f;

    .line 65
    invoke-interface {v0, p0, p1}, Landroidx/preference/PreferenceFragmentCompat$f;->a(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)Z

    .line 68
    move-result v0

    .line 69
    :cond_44
    if-nez v0, :cond_58

    .line 71
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 74
    move-result-object v2

    .line 75
    instance-of v2, v2, Landroidx/preference/PreferenceFragmentCompat$f;

    .line 77
    if-eqz v2, :cond_58

    .line 79
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Landroidx/preference/PreferenceFragmentCompat$f;

    .line 85
    invoke-interface {v0, p0, p1}, Landroidx/preference/PreferenceFragmentCompat$f;->a(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)Z

    .line 88
    move-result v0

    .line 89
    :cond_58
    if-nez v0, :cond_a0

    .line 91
    const-string v0, "PreferenceFragment"

    .line 93
    const-string v2, "onPreferenceStartFragment is not implemented in the parent activity - attempting to use a fallback implementation. You should implement this method so that you can configure the new fragment that will be displayed, and set a transition between the fragments."

    .line 95
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->I()Landroidx/fragment/app/p;

    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 113
    move-result-object v4

    .line 114
    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 117
    move-result-object v4

    .line 118
    invoke-virtual {p1}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {v3, v4, p1}, Landroidx/fragment/app/p;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 129
    invoke-virtual {p1, p0, v1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 132
    new-instance v1, Landroidx/fragment/app/a;

    .line 134
    invoke-direct {v1, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 137
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 144
    move-result-object v0

    .line 145
    check-cast v0, Landroid/view/View;

    .line 147
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 150
    move-result v0

    .line 151
    const/4 v2, 0x0

    .line 152
    invoke-virtual {v1, v0, p1, v2}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v1, v2}, Landroidx/fragment/app/b0;->c(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v1}, Landroidx/fragment/app/a;->p()I

    .line 161
    :cond_a0
    const/4 p1, 0x1

    .line 162
    return p1

    .line 163
    :cond_a2
    return v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_16

    .line 10
    new-instance v1, Landroid/os/Bundle;

    .line 12
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 15
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 18
    const-string v0, "android:preferences"

    .line 20
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 23
    :cond_16
    return-void
.end method

.method public onStart()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 4
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/f;

    .line 6
    invoke-virtual {v0, p0}, Landroidx/preference/f;->setOnPreferenceTreeClickListener(Landroidx/preference/f$c;)V

    .line 9
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/f;

    .line 11
    invoke-virtual {v0, p0}, Landroidx/preference/f;->setOnDisplayPreferenceDialogListener(Landroidx/preference/f$a;)V

    .line 14
    return-void
.end method

.method public onStop()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 4
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/f;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroidx/preference/f;->setOnPreferenceTreeClickListener(Landroidx/preference/f$c;)V

    .line 10
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/f;

    .line 12
    invoke-virtual {v0, v1}, Landroidx/preference/f;->setOnDisplayPreferenceDialogListener(Landroidx/preference/f$a;)V

    .line 15
    return-void
.end method

.method public onUnbindPreferences()V
    .registers 1

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    if-eqz p2, :cond_16

    .line 6
    const-string p1, "android:preferences"

    .line 8
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_16

    .line 14
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    .line 17
    move-result-object p2

    .line 18
    if-eqz p2, :cond_16

    .line 20
    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 23
    :cond_16
    iget-boolean p1, p0, Landroidx/preference/PreferenceFragmentCompat;->mHavePrefs:Z

    .line 25
    if-eqz p1, :cond_27

    .line 27
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->bindPreferences()V

    .line 30
    iget-object p1, p0, Landroidx/preference/PreferenceFragmentCompat;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    .line 32
    if-eqz p1, :cond_27

    .line 34
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 37
    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Landroidx/preference/PreferenceFragmentCompat;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    .line 40
    :cond_27
    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Landroidx/preference/PreferenceFragmentCompat;->mInitDone:Z

    .line 43
    return-void
.end method

.method public scrollToPreference(Landroidx/preference/Preference;)V
    .registers 3

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->scrollToPreferenceInternal(Landroidx/preference/Preference;Ljava/lang/String;)V

    return-void
.end method

.method public scrollToPreference(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Landroidx/preference/PreferenceFragmentCompat;->scrollToPreferenceInternal(Landroidx/preference/Preference;Ljava/lang/String;)V

    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mDividerDecoration:Landroidx/preference/PreferenceFragmentCompat$d;

    .line 3
    if-eqz p1, :cond_e

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 11
    move-result v1

    .line 12
    iput v1, v0, Landroidx/preference/PreferenceFragmentCompat$d;->b:I

    .line 14
    goto :goto_11

    .line 15
    :cond_e
    const/4 v1, 0x0

    .line 16
    iput v1, v0, Landroidx/preference/PreferenceFragmentCompat$d;->b:I

    .line 18
    :goto_11
    iput-object p1, v0, Landroidx/preference/PreferenceFragmentCompat$d;->a:Landroid/graphics/drawable/Drawable;

    .line 20
    iget-object p1, v0, Landroidx/preference/PreferenceFragmentCompat$d;->d:Landroidx/preference/PreferenceFragmentCompat;

    .line 22
    iget-object p1, p1, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    .line 24
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    .line 27
    return-void
.end method

.method public setDividerHeight(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mDividerDecoration:Landroidx/preference/PreferenceFragmentCompat$d;

    .line 3
    iput p1, v0, Landroidx/preference/PreferenceFragmentCompat$d;->b:I

    .line 5
    iget-object p1, v0, Landroidx/preference/PreferenceFragmentCompat$d;->d:Landroidx/preference/PreferenceFragmentCompat;

    .line 7
    iget-object p1, p1, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    .line 12
    return-void
.end method

.method public setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/f;

    .line 3
    iget-object v1, v0, Landroidx/preference/f;->g:Landroidx/preference/PreferenceScreen;

    .line 5
    const/4 v2, 0x1

    .line 6
    if-eq p1, v1, :cond_10

    .line 8
    if-eqz v1, :cond_c

    .line 10
    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->onDetached()V

    .line 13
    :cond_c
    iput-object p1, v0, Landroidx/preference/f;->g:Landroidx/preference/PreferenceScreen;

    .line 15
    move v0, v2

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 v0, 0x0

    .line 18
    :goto_11
    if-eqz v0, :cond_21

    .line 20
    if-eqz p1, :cond_21

    .line 22
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->onUnbindPreferences()V

    .line 25
    iput-boolean v2, p0, Landroidx/preference/PreferenceFragmentCompat;->mHavePrefs:Z

    .line 27
    iget-boolean p1, p0, Landroidx/preference/PreferenceFragmentCompat;->mInitDone:Z

    .line 29
    if-eqz p1, :cond_21

    .line 31
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;->postBindPreferences()V

    .line 34
    :cond_21
    return-void
.end method

.method public setPreferencesFromResource(ILjava/lang/String;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;->requirePreferenceManager()V

    .line 4
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/f;

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, p1, v2}, Landroidx/preference/f;->c(Landroid/content/Context;ILandroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;

    .line 14
    move-result-object p1

    .line 15
    if-eqz p2, :cond_27

    .line 17
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 20
    move-result-object p1

    .line 21
    instance-of v0, p1, Landroidx/preference/PreferenceScreen;

    .line 23
    if-eqz v0, :cond_19

    .line 25
    goto :goto_27

    .line 26
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 28
    const-string v0, "Preference object with key "

    .line 30
    const-string v1, " is not a PreferenceScreen"

    .line 32
    invoke-static {v0, p2, v1}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object p2

    .line 36
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    throw p1

    .line 40
    :cond_27
    :goto_27
    check-cast p1, Landroidx/preference/PreferenceScreen;

    .line 42
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    .line 45
    return-void
.end method
