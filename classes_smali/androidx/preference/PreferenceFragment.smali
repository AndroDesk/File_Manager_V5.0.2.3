.class public abstract Landroidx/preference/PreferenceFragment;
.super Landroid/app/Fragment;
.source "PreferenceFragment.java"

# interfaces
.implements Landroidx/preference/f$c;
.implements Landroidx/preference/f$a;
.implements Landroidx/preference/f$b;
.implements Landroidx/preference/DialogPreference$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/PreferenceFragment$c;,
        Landroidx/preference/PreferenceFragment$d;,
        Landroidx/preference/PreferenceFragment$f;,
        Landroidx/preference/PreferenceFragment$e;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:Landroidx/preference/PreferenceFragment$c;

.field public b:Landroidx/preference/f;

.field public c:Landroidx/recyclerview/widget/RecyclerView;

.field public d:Landroid/view/ContextThemeWrapper;

.field public e:I

.field public final f:Landroidx/preference/PreferenceFragment$a;

.field public final g:Landroidx/preference/PreferenceFragment$b;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 4
    new-instance v0, Landroidx/preference/PreferenceFragment$c;

    .line 6
    invoke-direct {v0, p0}, Landroidx/preference/PreferenceFragment$c;-><init>(Landroidx/preference/PreferenceFragment;)V

    .line 9
    iput-object v0, p0, Landroidx/preference/PreferenceFragment;->a:Landroidx/preference/PreferenceFragment$c;

    .line 11
    sget v0, Landroidx/preference/n;->preference_list_fragment:I

    .line 13
    iput v0, p0, Landroidx/preference/PreferenceFragment;->e:I

    .line 15
    new-instance v0, Landroidx/preference/PreferenceFragment$a;

    .line 17
    invoke-direct {v0, p0}, Landroidx/preference/PreferenceFragment$a;-><init>(Landroidx/preference/PreferenceFragment;)V

    .line 20
    iput-object v0, p0, Landroidx/preference/PreferenceFragment;->f:Landroidx/preference/PreferenceFragment$a;

    .line 22
    new-instance v0, Landroidx/preference/PreferenceFragment$b;

    .line 24
    invoke-direct {v0, p0}, Landroidx/preference/PreferenceFragment$b;-><init>(Landroidx/preference/PreferenceFragment;)V

    .line 27
    iput-object v0, p0, Landroidx/preference/PreferenceFragment;->g:Landroidx/preference/PreferenceFragment$b;

    .line 29
    return-void
.end method


# virtual methods
.method public abstract a(Landroid/os/Bundle;Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public final findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->b:Landroidx/preference/f;

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

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    new-instance v0, Landroid/util/TypedValue;

    .line 6
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 9
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

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
    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 31
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    .line 34
    move-result-object v2

    .line 35
    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 38
    iput-object v1, p0, Landroidx/preference/PreferenceFragment;->d:Landroid/view/ContextThemeWrapper;

    .line 40
    new-instance v0, Landroidx/preference/f;

    .line 42
    invoke-direct {v0, v1}, Landroidx/preference/f;-><init>(Landroid/content/Context;)V

    .line 45
    iput-object v0, p0, Landroidx/preference/PreferenceFragment;->b:Landroidx/preference/f;

    .line 47
    invoke-virtual {v0, p0}, Landroidx/preference/f;->setOnNavigateToScreenListener(Landroidx/preference/f$b;)V

    .line 50
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_42

    .line 56
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 59
    move-result-object v0

    .line 60
    const-string v1, "androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

    .line 62
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 66
    goto :goto_43

    .line 67
    :cond_42
    const/4 v0, 0x0

    .line 68
    :goto_43
    invoke-virtual {p0, p1, v0}, Landroidx/preference/PreferenceFragment;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11

    .line 1
    iget-object p3, p0, Landroidx/preference/PreferenceFragment;->d:Landroid/view/ContextThemeWrapper;

    .line 3
    sget-object v0, Landroidx/preference/q;->PreferenceFragment:[I

    .line 5
    sget v1, Landroidx/preference/i;->preferenceFragmentStyle:I

    .line 7
    const v2, 0x1010506

    .line 10
    invoke-static {p3, v1, v2}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-virtual {p3, v2, v0, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 19
    move-result-object p3

    .line 20
    sget v0, Landroidx/preference/q;->PreferenceFragment_android_layout:I

    .line 22
    iget v1, p0, Landroidx/preference/PreferenceFragment;->e:I

    .line 24
    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 27
    move-result v0

    .line 28
    iput v0, p0, Landroidx/preference/PreferenceFragment;->e:I

    .line 30
    sget v0, Landroidx/preference/q;->PreferenceFragment_android_divider:I

    .line 32
    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 35
    move-result-object v0

    .line 36
    sget v1, Landroidx/preference/q;->PreferenceFragment_android_dividerHeight:I

    .line 38
    const/4 v2, -0x1

    .line 39
    invoke-virtual {p3, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 42
    move-result v1

    .line 43
    sget v4, Landroidx/preference/q;->PreferenceFragment_allowDividerAfterLastItem:I

    .line 45
    const/4 v5, 0x1

    .line 46
    invoke-virtual {p3, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 49
    move-result v4

    .line 50
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    iget-object p3, p0, Landroidx/preference/PreferenceFragment;->d:Landroid/view/ContextThemeWrapper;

    .line 55
    invoke-virtual {p1, p3}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 58
    move-result-object p1

    .line 59
    iget p3, p0, Landroidx/preference/PreferenceFragment;->e:I

    .line 61
    invoke-virtual {p1, p3, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 64
    move-result-object p2

    .line 65
    const p3, 0x102003f

    .line 68
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    move-result-object p3

    .line 72
    instance-of v5, p3, Landroid/view/ViewGroup;

    .line 74
    if-eqz v5, :cond_c9

    .line 76
    check-cast p3, Landroid/view/ViewGroup;

    .line 78
    iget-object v5, p0, Landroidx/preference/PreferenceFragment;->d:Landroid/view/ContextThemeWrapper;

    .line 80
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 83
    move-result-object v5

    .line 84
    const-string v6, "android.hardware.type.automotive"

    .line 86
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 89
    move-result v5

    .line 90
    if-eqz v5, :cond_66

    .line 92
    sget v5, Landroidx/preference/l;->recycler_view:I

    .line 94
    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 97
    move-result-object v5

    .line 98
    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    .line 100
    if-eqz v5, :cond_66

    .line 102
    goto :goto_83

    .line 103
    :cond_66
    sget v5, Landroidx/preference/n;->preference_recyclerview:I

    .line 105
    invoke-virtual {p1, v5, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 108
    move-result-object p1

    .line 109
    move-object v5, p1

    .line 110
    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    .line 112
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 114
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    .line 117
    move-result-object v6

    .line 118
    invoke-direct {p1, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 121
    invoke-virtual {v5, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 124
    new-instance p1, Landroidx/preference/g;

    .line 126
    invoke-direct {p1, v5}, Landroidx/preference/g;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 129
    invoke-virtual {v5, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroidx/recyclerview/widget/r;)V

    .line 132
    :goto_83
    iput-object v5, p0, Landroidx/preference/PreferenceFragment;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 134
    iget-object p1, p0, Landroidx/preference/PreferenceFragment;->a:Landroidx/preference/PreferenceFragment$c;

    .line 136
    invoke-virtual {v5, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 139
    iget-object p1, p0, Landroidx/preference/PreferenceFragment;->a:Landroidx/preference/PreferenceFragment$c;

    .line 141
    if-eqz v0, :cond_98

    .line 143
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 149
    move-result v3

    .line 150
    iput v3, p1, Landroidx/preference/PreferenceFragment$c;->b:I

    .line 152
    goto :goto_9a

    .line 153
    :cond_98
    iput v3, p1, Landroidx/preference/PreferenceFragment$c;->b:I

    .line 155
    :goto_9a
    iput-object v0, p1, Landroidx/preference/PreferenceFragment$c;->a:Landroid/graphics/drawable/Drawable;

    .line 157
    iget-object p1, p1, Landroidx/preference/PreferenceFragment$c;->d:Landroidx/preference/PreferenceFragment;

    .line 159
    iget-object p1, p1, Landroidx/preference/PreferenceFragment;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 161
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    .line 164
    if-eq v1, v2, :cond_b0

    .line 166
    iget-object p1, p0, Landroidx/preference/PreferenceFragment;->a:Landroidx/preference/PreferenceFragment$c;

    .line 168
    iput v1, p1, Landroidx/preference/PreferenceFragment$c;->b:I

    .line 170
    iget-object p1, p1, Landroidx/preference/PreferenceFragment$c;->d:Landroidx/preference/PreferenceFragment;

    .line 172
    iget-object p1, p1, Landroidx/preference/PreferenceFragment;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 174
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    .line 177
    :cond_b0
    iget-object p1, p0, Landroidx/preference/PreferenceFragment;->a:Landroidx/preference/PreferenceFragment$c;

    .line 179
    iput-boolean v4, p1, Landroidx/preference/PreferenceFragment$c;->c:Z

    .line 181
    iget-object p1, p0, Landroidx/preference/PreferenceFragment;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 183
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 186
    move-result-object p1

    .line 187
    if-nez p1, :cond_c1

    .line 189
    iget-object p1, p0, Landroidx/preference/PreferenceFragment;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 191
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 194
    :cond_c1
    iget-object p1, p0, Landroidx/preference/PreferenceFragment;->f:Landroidx/preference/PreferenceFragment$a;

    .line 196
    iget-object p3, p0, Landroidx/preference/PreferenceFragment;->g:Landroidx/preference/PreferenceFragment$b;

    .line 198
    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 201
    return-object p2

    .line 202
    :cond_c9
    new-instance p1, Ljava/lang/RuntimeException;

    .line 204
    const-string p2, "Content has view with id attribute \'android.R.id.list_container\' that is not a ViewGroup class"

    .line 206
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 209
    throw p1
.end method

.method public final onDestroyView()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->f:Landroidx/preference/PreferenceFragment$a;

    .line 3
    iget-object v1, p0, Landroidx/preference/PreferenceFragment;->g:Landroidx/preference/PreferenceFragment$b;

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->f:Landroidx/preference/PreferenceFragment$a;

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Landroidx/preference/PreferenceFragment;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 17
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 20
    return-void
.end method

.method public final onDisplayPreferenceDialog(Landroidx/preference/Preference;)V
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Landroidx/preference/PreferenceFragment$d;

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_14

    .line 10
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroidx/preference/PreferenceFragment$d;

    .line 16
    invoke-interface {v0}, Landroidx/preference/PreferenceFragment$d;->a()Z

    .line 19
    move-result v0

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    move v0, v1

    .line 22
    :goto_15
    if-eqz v0, :cond_18

    .line 24
    return-void

    .line 25
    :cond_18
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    .line 28
    move-result-object v0

    .line 29
    const-string v2, "androidx.preference.PreferenceFragment.DIALOG"

    .line 31
    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_25

    .line 37
    return-void

    .line 38
    :cond_25
    instance-of v0, p1, Landroidx/preference/EditTextPreference;

    .line 40
    const-string v3, "key"

    .line 42
    const/4 v4, 0x1

    .line 43
    if-eqz v0, :cond_41

    .line 45
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    new-instance v0, Landroidx/preference/EditTextPreferenceDialogFragment;

    .line 51
    invoke-direct {v0}, Landroidx/preference/EditTextPreferenceDialogFragment;-><init>()V

    .line 54
    new-instance v5, Landroid/os/Bundle;

    .line 56
    invoke-direct {v5, v4}, Landroid/os/Bundle;-><init>(I)V

    .line 59
    invoke-virtual {v5, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0, v5}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 65
    goto :goto_72

    .line 66
    :cond_41
    instance-of v0, p1, Landroidx/preference/ListPreference;

    .line 68
    if-eqz v0, :cond_5a

    .line 70
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 74
    new-instance v0, Landroidx/preference/ListPreferenceDialogFragment;

    .line 76
    invoke-direct {v0}, Landroidx/preference/ListPreferenceDialogFragment;-><init>()V

    .line 79
    new-instance v5, Landroid/os/Bundle;

    .line 81
    invoke-direct {v5, v4}, Landroid/os/Bundle;-><init>(I)V

    .line 84
    invoke-virtual {v5, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0, v5}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 90
    goto :goto_72

    .line 91
    :cond_5a
    instance-of v0, p1, Landroidx/preference/MultiSelectListPreference;

    .line 93
    if-eqz v0, :cond_7d

    .line 95
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    .line 98
    move-result-object p1

    .line 99
    new-instance v0, Landroidx/preference/MultiSelectListPreferenceDialogFragment;

    .line 101
    invoke-direct {v0}, Landroidx/preference/MultiSelectListPreferenceDialogFragment;-><init>()V

    .line 104
    new-instance v5, Landroid/os/Bundle;

    .line 106
    invoke-direct {v5, v4}, Landroid/os/Bundle;-><init>(I)V

    .line 109
    invoke-virtual {v5, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0, v5}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 115
    :goto_72
    invoke-virtual {v0, p0, v1}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 118
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {v0, p1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 125
    return-void

    .line 126
    :cond_7d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 128
    const-string v0, "Tried to display dialog for unknown preference type. Did you forget to override onDisplayPreferenceDialog()?"

    .line 130
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 133
    throw p1
.end method

.method public final onNavigateToScreen(Landroidx/preference/PreferenceScreen;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    .line 4
    move-result-object p1

    .line 5
    instance-of p1, p1, Landroidx/preference/PreferenceFragment$f;

    .line 7
    if-eqz p1, :cond_11

    .line 9
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroidx/preference/PreferenceFragment$f;

    .line 15
    invoke-interface {p1}, Landroidx/preference/PreferenceFragment$f;->a()Z

    .line 18
    :cond_11
    return-void
.end method

.method public final onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_19

    .line 7
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    .line 10
    move-result-object p1

    .line 11
    instance-of p1, p1, Landroidx/preference/PreferenceFragment$e;

    .line 13
    if-eqz p1, :cond_19

    .line 15
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Landroidx/preference/PreferenceFragment$e;

    .line 21
    invoke-interface {p1}, Landroidx/preference/PreferenceFragment$e;->a()Z

    .line 24
    move-result p1

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    const/4 p1, 0x0

    .line 27
    :goto_1a
    return p1
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->b:Landroidx/preference/f;

    .line 6
    iget-object v0, v0, Landroidx/preference/f;->g:Landroidx/preference/PreferenceScreen;

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

.method public final onStart()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 4
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->b:Landroidx/preference/f;

    .line 6
    invoke-virtual {v0, p0}, Landroidx/preference/f;->setOnPreferenceTreeClickListener(Landroidx/preference/f$c;)V

    .line 9
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->b:Landroidx/preference/f;

    .line 11
    invoke-virtual {v0, p0}, Landroidx/preference/f;->setOnDisplayPreferenceDialogListener(Landroidx/preference/f$a;)V

    .line 14
    return-void
.end method

.method public final onStop()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 4
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->b:Landroidx/preference/f;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroidx/preference/f;->setOnPreferenceTreeClickListener(Landroidx/preference/f$c;)V

    .line 10
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->b:Landroidx/preference/f;

    .line 12
    invoke-virtual {v0, v1}, Landroidx/preference/f;->setOnDisplayPreferenceDialogListener(Landroidx/preference/f$a;)V

    .line 15
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

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
    iget-object p2, p0, Landroidx/preference/PreferenceFragment;->b:Landroidx/preference/f;

    .line 16
    iget-object p2, p2, Landroidx/preference/f;->g:Landroidx/preference/PreferenceScreen;

    .line 18
    if-eqz p2, :cond_16

    .line 20
    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 23
    :cond_16
    return-void
.end method
