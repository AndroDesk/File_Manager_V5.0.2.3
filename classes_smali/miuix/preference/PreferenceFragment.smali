.class public abstract Lmiuix/preference/PreferenceFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "PreferenceFragment.java"

# interfaces
.implements Lmiuix/appcompat/app/IFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/preference/PreferenceFragment$FrameDecoration;,
        Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;
    }
.end annotation


# static fields
.field private static final DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "androidx.preference.PreferenceFragment.DIALOG"


# instance fields
.field private mAdapterInvalid:Z

.field private mConfigChangeUpdateViewEnable:Z

.field public mContentInset:Landroid/graphics/Rect;

.field private mCurSelectedItem:I

.field private mDeviceType:I

.field private mExtraPaddingEnable:Z

.field private mExtraPaddingHorizontal:I

.field private mExtraPaddingPolicy:Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

.field private mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

.field private mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;

.field private mIsOverlayMode:Z

.field private mItemSelectable:Z

.field private mListContainer:Landroid/view/View;

.field private mWindowHeightDp:I

.field private mWindowWidthDp:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lmiuix/preference/PreferenceFragment;->mIsOverlayMode:Z

    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lmiuix/preference/PreferenceFragment;->mAdapterInvalid:Z

    .line 10
    iput-boolean v0, p0, Lmiuix/preference/PreferenceFragment;->mItemSelectable:Z

    .line 12
    const/4 v2, -0x1

    .line 13
    iput v2, p0, Lmiuix/preference/PreferenceFragment;->mCurSelectedItem:I

    .line 15
    iput-boolean v1, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingEnable:Z

    .line 17
    iput v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingHorizontal:I

    .line 19
    return-void
.end method

.method public static synthetic access$100(Lmiuix/preference/PreferenceFragment;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/preference/PreferenceFragment;->mWindowWidthDp:I

    .line 3
    return p0
.end method

.method public static synthetic access$102(Lmiuix/preference/PreferenceFragment;I)I
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/preference/PreferenceFragment;->mWindowWidthDp:I

    .line 3
    return p1
.end method

.method public static synthetic access$1300(Lmiuix/preference/PreferenceFragment;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/preference/PreferenceFragment;->mAdapterInvalid:Z

    .line 3
    return p0
.end method

.method public static synthetic access$200(Lmiuix/preference/PreferenceFragment;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/preference/PreferenceFragment;->mWindowHeightDp:I

    .line 3
    return p0
.end method

.method public static synthetic access$202(Lmiuix/preference/PreferenceFragment;I)I
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/preference/PreferenceFragment;->mWindowHeightDp:I

    .line 3
    return p1
.end method

.method public static synthetic access$300(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceFragment$FrameDecoration;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lmiuix/preference/PreferenceFragment;)Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingPolicy:Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lmiuix/preference/PreferenceFragment;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingHorizontal:I

    .line 3
    return p0
.end method

.method public static synthetic access$502(Lmiuix/preference/PreferenceFragment;I)I
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingHorizontal:I

    .line 3
    return p1
.end method

.method public static synthetic access$600(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceGroupAdapter;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;

    .line 3
    return-object p0
.end method

.method private initExtraPaddingPolicy()V
    .registers 3

    .line 1
    new-instance v0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;

    .line 3
    invoke-direct {v0}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;-><init>()V

    .line 6
    iget v1, p0, Lmiuix/preference/PreferenceFragment;->mDeviceType:I

    .line 8
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;->createDefault(I)Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingPolicy:Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    .line 14
    if-eqz v0, :cond_35

    .line 16
    iget-boolean v1, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingEnable:Z

    .line 18
    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->setEnable(Z)V

    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 28
    move-result-object v0

    .line 29
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 31
    iget-object v1, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingPolicy:Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    .line 33
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->isEnable()Z

    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_32

    .line 39
    iget-object v1, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingPolicy:Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;

    .line 41
    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->getExtraPaddingDp()I

    .line 44
    move-result v1

    .line 45
    int-to-float v1, v1

    .line 46
    mul-float/2addr v1, v0

    .line 47
    float-to-int v0, v1

    .line 48
    iput v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingHorizontal:I

    .line 50
    goto :goto_35

    .line 51
    :cond_32
    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingHorizontal:I

    .line 54
    :cond_35
    :goto_35
    return-void
.end method

.method private isTabletOrFold()Z
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/preference/PreferenceFragment;->mDeviceType:I

    .line 3
    const/4 v1, 0x2

    .line 4
    if-eq v0, v1, :cond_b

    .line 6
    const/4 v1, 0x3

    .line 7
    if-ne v0, v1, :cond_9

    .line 9
    goto :goto_b

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    :goto_b
    const/4 v0, 0x1

    .line 13
    :goto_c
    return v0
.end method

.method private updateActionBarOverlay()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 4
    move-result-object v0

    .line 5
    :goto_4
    if-eqz v0, :cond_19

    .line 7
    instance-of v1, v0, Lmiuix/appcompat/app/IFragment;

    .line 9
    if-eqz v1, :cond_14

    .line 11
    move-object v1, v0

    .line 12
    check-cast v1, Lmiuix/appcompat/app/IFragment;

    .line 14
    invoke-interface {v1}, Lmiuix/appcompat/app/IFragment;->hasActionBar()Z

    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_14

    .line 20
    goto :goto_1a

    .line 21
    :cond_14
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 24
    move-result-object v0

    .line 25
    goto :goto_4

    .line 26
    :cond_19
    const/4 v1, 0x0

    .line 27
    :goto_1a
    if-eqz v1, :cond_21

    .line 29
    invoke-interface {v1}, Lmiuix/appcompat/app/IFragment;->getThemedContext()Landroid/content/Context;

    .line 32
    move-result-object v0

    .line 33
    goto :goto_25

    .line 34
    :cond_21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 37
    move-result-object v0

    .line 38
    :goto_25
    if-eqz v0, :cond_30

    .line 40
    sget v1, Lmiuix/preference/R$attr;->windowActionBarOverlay:I

    .line 42
    const/4 v2, 0x0

    .line 43
    invoke-static {v0, v1, v2}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    .line 46
    move-result v0

    .line 47
    iput-boolean v0, p0, Lmiuix/preference/PreferenceFragment;->mIsOverlayMode:Z

    .line 49
    :cond_30
    return-void
.end method


# virtual methods
.method public bindViewWithContentInset(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lmiuix/appcompat/app/IFragment;

    .line 7
    if-eqz v1, :cond_e

    .line 9
    check-cast v0, Lmiuix/appcompat/app/IFragment;

    .line 11
    invoke-interface {v0, p1}, Lmiuix/appcompat/app/IContentInsetState;->bindViewWithContentInset(Landroid/view/View;)V

    .line 14
    goto :goto_1b

    .line 15
    :cond_e
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 18
    move-result-object v0

    .line 19
    instance-of v1, v0, Lmiuix/appcompat/app/AppCompatActivity;

    .line 21
    if-eqz v1, :cond_1b

    .line 23
    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    .line 25
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->bindViewWithContentInset(Landroid/view/View;)V

    .line 28
    :cond_1b
    :goto_1b
    return-void
.end method

.method public checkThemeLegality()V
    .registers 1

    return-void
.end method

.method public dismissImmersionMenu(Z)V
    .registers 2

    return-void
.end method

.method public getActionBar()Lmiuix/appcompat/app/ActionBar;
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 8
    move-result-object v1

    .line 9
    if-nez v0, :cond_15

    .line 11
    instance-of v2, v1, Lmiuix/appcompat/app/AppCompatActivity;

    .line 13
    if-eqz v2, :cond_15

    .line 15
    check-cast v1, Lmiuix/appcompat/app/AppCompatActivity;

    .line 17
    invoke-virtual {v1}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_15
    instance-of v1, v0, Lmiuix/appcompat/app/IFragment;

    .line 24
    if-eqz v1, :cond_20

    .line 26
    check-cast v0, Lmiuix/appcompat/app/IFragment;

    .line 28
    invoke-interface {v0}, Lmiuix/appcompat/app/IFragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 31
    move-result-object v0

    .line 32
    return-object v0

    .line 33
    :cond_20
    const/4 v0, 0x0

    .line 34
    return-object v0
.end method

.method public getContentInset()Landroid/graphics/Rect;
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/preference/PreferenceFragment;->mIsOverlayMode:Z

    .line 3
    if-eqz v0, :cond_2f

    .line 5
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mContentInset:Landroid/graphics/Rect;

    .line 7
    if-nez v0, :cond_2f

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_23

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 18
    move-result-object v1

    .line 19
    instance-of v1, v1, Lmiuix/appcompat/app/AppCompatActivity;

    .line 21
    if-eqz v1, :cond_23

    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    .line 29
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getContentInset()Landroid/graphics/Rect;

    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lmiuix/preference/PreferenceFragment;->mContentInset:Landroid/graphics/Rect;

    .line 35
    goto :goto_2f

    .line 36
    :cond_23
    instance-of v1, v0, Lmiuix/appcompat/app/IFragment;

    .line 38
    if-eqz v1, :cond_2f

    .line 40
    check-cast v0, Lmiuix/appcompat/app/IFragment;

    .line 42
    invoke-interface {v0}, Lmiuix/appcompat/app/IContentInsetState;->getContentInset()Landroid/graphics/Rect;

    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lmiuix/preference/PreferenceFragment;->mContentInset:Landroid/graphics/Rect;

    .line 48
    :cond_2f
    :goto_2f
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mContentInset:Landroid/graphics/Rect;

    .line 50
    return-object v0
.end method

.method public getExtraHorizontalPadding()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingHorizontal:I

    .line 3
    return v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public hasActionBar()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isActionBarOverlay()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/preference/PreferenceFragment;->mIsOverlayMode:Z

    .line 3
    return v0
.end method

.method public isConfigChangeUpdateViewEnable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isExtraHorizontalPaddingEnable()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingEnable:Z

    .line 3
    return v0
.end method

.method public isHighlightRequested()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Lmiuix/preference/PreferenceGroupAdapter;->isHighlightRequested()Z

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public isInEditActionMode()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isInFloatingWindowMode()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lmiuix/appcompat/app/AppCompatActivity;

    .line 7
    if-eqz v1, :cond_f

    .line 9
    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    .line 11
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isInFloatingWindowMode()Z

    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_f
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method public isInMiuiSettingMultiWindowMode()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_f

    .line 7
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lmiuix/core/util/IntentUtils;->isIntentFromSettingsSplit(Landroid/content/Intent;)Z

    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_f
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method public isIsInSearchActionMode()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isRegisterResponsive()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .registers 2

    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .registers 2

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 10

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Lmiuix/os/DeviceHelper;->detectType(Landroid/content/Context;)I

    .line 11
    move-result p1

    .line 12
    iget v0, p0, Lmiuix/preference/PreferenceFragment;->mDeviceType:I

    .line 14
    if-eq v0, p1, :cond_25

    .line 16
    iput p1, p0, Lmiuix/preference/PreferenceFragment;->mDeviceType:I

    .line 18
    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;->initExtraPaddingPolicy()V

    .line 21
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;

    .line 23
    if-eqz p1, :cond_25

    .line 25
    iget v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingHorizontal:I

    .line 27
    invoke-virtual {p1, v0}, Lmiuix/preference/PreferenceGroupAdapter;->setExtraPaddingHorizontal(I)Z

    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_25

    .line 33
    iget p1, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingHorizontal:I

    .line 35
    invoke-virtual {p0, p1}, Lmiuix/preference/PreferenceFragment;->onExtraPaddingChanged(I)V

    .line 38
    :cond_25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 41
    move-result-object p1

    .line 42
    if-eqz p1, :cond_81

    .line 44
    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;->isTabletOrFold()Z

    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_81

    .line 50
    iget-boolean p1, p0, Lmiuix/preference/PreferenceFragment;->mConfigChangeUpdateViewEnable:Z

    .line 52
    if-nez p1, :cond_36

    .line 54
    goto :goto_81

    .line 55
    :cond_36
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    .line 58
    move-result-object p1

    .line 59
    if-nez p1, :cond_3d

    .line 61
    return-void

    .line 62
    :cond_3d
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    .line 64
    if-eqz v0, :cond_81

    .line 66
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->initMaskPadding(Landroid/content/Context;)V

    .line 73
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    .line 75
    invoke-virtual {v0}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->updateClipPaintColor()V

    .line 78
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;

    .line 80
    if-eqz v0, :cond_81

    .line 82
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {v0, p1}, Lmiuix/preference/PreferenceGroupAdapter;->initAttr(Landroid/content/Context;)V

    .line 89
    iget-object v1, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;

    .line 91
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    .line 93
    invoke-static {p1}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->access$700(Lmiuix/preference/PreferenceFragment$FrameDecoration;)Landroid/graphics/Paint;

    .line 96
    move-result-object v2

    .line 97
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    .line 99
    invoke-static {p1}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->access$800(Lmiuix/preference/PreferenceFragment$FrameDecoration;)I

    .line 102
    move-result v3

    .line 103
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    .line 105
    invoke-static {p1}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->access$900(Lmiuix/preference/PreferenceFragment$FrameDecoration;)I

    .line 108
    move-result v4

    .line 109
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    .line 111
    invoke-static {p1}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->access$1000(Lmiuix/preference/PreferenceFragment$FrameDecoration;)I

    .line 114
    move-result v5

    .line 115
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    .line 117
    invoke-static {p1}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->access$1100(Lmiuix/preference/PreferenceFragment$FrameDecoration;)I

    .line 120
    move-result v6

    .line 121
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    .line 123
    invoke-static {p1}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->access$1200(Lmiuix/preference/PreferenceFragment$FrameDecoration;)I

    .line 126
    move-result v7

    .line 127
    invoke-virtual/range {v1 .. v7}, Lmiuix/preference/PreferenceGroupAdapter;->setClipPaint(Landroid/graphics/Paint;IIIII)V

    .line 130
    :cond_81
    :goto_81
    return-void
.end method

.method public onContentInsetChanged(Landroid/graphics/Rect;)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    move-result-object v1

    .line 9
    if-eqz v0, :cond_60

    .line 11
    if-eqz v1, :cond_60

    .line 13
    invoke-virtual {p0}, Lmiuix/preference/PreferenceFragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 16
    move-result-object v2

    .line 17
    if-eqz v2, :cond_4f

    .line 19
    check-cast v2, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 21
    invoke-virtual {v2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getContentView()Landroid/view/View;

    .line 24
    move-result-object v3

    .line 25
    if-eqz v3, :cond_4f

    .line 27
    new-instance v3, Landroid/graphics/Rect;

    .line 29
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 32
    new-instance v4, Landroid/graphics/Rect;

    .line 34
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 37
    invoke-virtual {v2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getContentView()Landroid/view/View;

    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v2, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 44
    invoke-virtual {v0, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 47
    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    .line 49
    iget v2, v4, Landroid/graphics/Rect;->bottom:I

    .line 51
    sub-int/2addr v0, v2

    .line 52
    const/4 v2, 0x0

    .line 53
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 56
    move-result v0

    .line 57
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 59
    sub-int/2addr p1, v0

    .line 60
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    .line 63
    move-result p1

    .line 64
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    .line 67
    move-result v0

    .line 68
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    .line 71
    move-result v2

    .line 72
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    .line 75
    move-result v3

    .line 76
    invoke-virtual {v1, v0, v2, v3, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 79
    goto :goto_60

    .line 80
    :cond_4f
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    .line 83
    move-result v0

    .line 84
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    .line 87
    move-result v2

    .line 88
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    .line 91
    move-result v3

    .line 92
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 94
    invoke-virtual {v1, v0, v2, v3, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 97
    :cond_60
    :goto_60
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Lmiuix/preference/PreferenceFragment;->isConfigChangeUpdateViewEnable()Z

    .line 7
    move-result p1

    .line 8
    iput-boolean p1, p0, Lmiuix/preference/PreferenceFragment;->mConfigChangeUpdateViewEnable:Z

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0, p1}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;Landroid/content/res/Configuration;)Lmiuix/core/util/WindowBaseInfo;

    .line 25
    move-result-object p1

    .line 26
    iget-object p1, p1, Lmiuix/core/util/WindowBaseInfo;->windowSizeDp:Landroid/graphics/Point;

    .line 28
    iget v0, p1, Landroid/graphics/Point;->x:I

    .line 30
    iput v0, p0, Lmiuix/preference/PreferenceFragment;->mWindowWidthDp:I

    .line 32
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 34
    iput p1, p0, Lmiuix/preference/PreferenceFragment;->mWindowHeightDp:I

    .line 36
    return-void
.end method

.method public final onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .registers 9

    .line 1
    new-instance v0, Lmiuix/preference/PreferenceGroupAdapter;

    .line 3
    invoke-direct {v0, p1}, Lmiuix/preference/PreferenceGroupAdapter;-><init>(Landroidx/preference/PreferenceGroup;)V

    .line 6
    iput-object v0, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;

    .line 8
    iget p1, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingHorizontal:I

    .line 10
    invoke-virtual {v0, p1}, Lmiuix/preference/PreferenceGroupAdapter;->setExtraPaddingHorizontal(I)Z

    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_14

    .line 16
    iget p1, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingHorizontal:I

    .line 18
    invoke-virtual {p0, p1}, Lmiuix/preference/PreferenceFragment;->onExtraPaddingChanged(I)V

    .line 21
    :cond_14
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;

    .line 23
    invoke-virtual {p1}, Landroidx/preference/c;->getItemCount()I

    .line 26
    move-result p1

    .line 27
    const/4 v0, 0x1

    .line 28
    if-ge p1, v0, :cond_1e

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    const/4 v0, 0x0

    .line 32
    :goto_1f
    iput-boolean v0, p0, Lmiuix/preference/PreferenceFragment;->mAdapterInvalid:Z

    .line 34
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    .line 36
    if-eqz p1, :cond_4c

    .line 38
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;

    .line 40
    invoke-static {p1}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->access$700(Lmiuix/preference/PreferenceFragment$FrameDecoration;)Landroid/graphics/Paint;

    .line 43
    move-result-object v1

    .line 44
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    .line 46
    invoke-static {p1}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->access$800(Lmiuix/preference/PreferenceFragment$FrameDecoration;)I

    .line 49
    move-result v2

    .line 50
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    .line 52
    invoke-static {p1}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->access$900(Lmiuix/preference/PreferenceFragment$FrameDecoration;)I

    .line 55
    move-result v3

    .line 56
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    .line 58
    invoke-static {p1}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->access$1000(Lmiuix/preference/PreferenceFragment$FrameDecoration;)I

    .line 61
    move-result v4

    .line 62
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    .line 64
    invoke-static {p1}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->access$1100(Lmiuix/preference/PreferenceFragment$FrameDecoration;)I

    .line 67
    move-result v5

    .line 68
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    .line 70
    invoke-static {p1}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->access$1200(Lmiuix/preference/PreferenceFragment$FrameDecoration;)I

    .line 73
    move-result v6

    .line 74
    invoke-virtual/range {v0 .. v6}, Lmiuix/preference/PreferenceGroupAdapter;->setClipPaint(Landroid/graphics/Paint;IIIII)V

    .line 77
    :cond_4c
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;

    .line 79
    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 6

    .line 1
    sget p3, Lmiuix/preference/R$layout;->miuix_preference_recyclerview:I

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    instance-of p3, p1, Lmiuix/recyclerview/widget/RecyclerView;

    .line 12
    if-eqz p3, :cond_13

    .line 14
    move-object p3, p1

    .line 15
    check-cast p3, Lmiuix/recyclerview/widget/RecyclerView;

    .line 17
    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/SpringRecyclerView;->setSpringEnabled(Z)V

    .line 20
    :cond_13
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->onCreateLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 23
    move-result-object p3

    .line 24
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 27
    const/4 p3, 0x1

    .line 28
    invoke-static {p1, p3}, Lmiuix/smooth/SmoothCornerHelper;->setViewSmoothCornerEnable(Landroid/view/View;Z)V

    .line 31
    new-instance p3, Lmiuix/preference/PreferenceFragment$FrameDecoration;

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 36
    move-result-object v0

    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-direct {p3, p0, v0, v1}, Lmiuix/preference/PreferenceFragment$FrameDecoration;-><init>(Lmiuix/preference/PreferenceFragment;Landroid/content/Context;Lmiuix/preference/PreferenceFragment$1;)V

    .line 41
    iput-object p3, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 46
    move-result-object p3

    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 54
    move-result-object v0

    .line 55
    invoke-static {p3, v0}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;Landroid/content/res/Configuration;)Lmiuix/core/util/WindowBaseInfo;

    .line 58
    move-result-object p3

    .line 59
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    .line 61
    iget-object p3, p3, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    .line 63
    iget p3, p3, Landroid/graphics/Point;->y:I

    .line 65
    invoke-virtual {v0, p3}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->updateWindowHeight(I)V

    .line 68
    iget-object p3, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    .line 70
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 73
    iput-object p2, p0, Lmiuix/preference/PreferenceFragment;->mListContainer:Landroid/view/View;

    .line 75
    new-instance p3, Lmiuix/preference/PreferenceFragment$1;

    .line 77
    invoke-direct {p3, p0}, Lmiuix/preference/PreferenceFragment$1;-><init>(Lmiuix/preference/PreferenceFragment;)V

    .line 80
    invoke-virtual {p2, p3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 83
    instance-of p3, p2, Lmiuix/springback/view/SpringBackLayout;

    .line 85
    if-eqz p3, :cond_5b

    .line 87
    check-cast p2, Lmiuix/springback/view/SpringBackLayout;

    .line 89
    invoke-virtual {p2, p1}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    .line 92
    :cond_5b
    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    .line 1
    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;->updateActionBarOverlay()V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lmiuix/os/DeviceHelper;->detectType(Landroid/content/Context;)I

    .line 11
    move-result v0

    .line 12
    iput v0, p0, Lmiuix/preference/PreferenceFragment;->mDeviceType:I

    .line 14
    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;->initExtraPaddingPolicy()V

    .line 17
    invoke-super {p0, p1, p2, p3}, Landroidx/preference/PreferenceFragmentCompat;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public onDestroyView()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 4
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mListContainer:Landroid/view/View;

    .line 6
    invoke-virtual {p0, v0}, Lmiuix/preference/PreferenceFragment;->unregisterCoordinateScrollView(Landroid/view/View;)V

    .line 9
    return-void
.end method

.method public onDispatchNestedScrollOffset([I)V
    .registers 2

    return-void
.end method

.method public onDisplayPreferenceDialog(Landroidx/preference/Preference;)V
    .registers 5

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
    if-nez v0, :cond_29

    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 27
    move-result-object v2

    .line 28
    instance-of v2, v2, Landroidx/preference/PreferenceFragmentCompat$e;

    .line 30
    if-eqz v2, :cond_29

    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroidx/preference/PreferenceFragmentCompat$e;

    .line 38
    invoke-interface {v0}, Landroidx/preference/PreferenceFragmentCompat$e;->a()Z

    .line 41
    move-result v0

    .line 42
    :cond_29
    if-eqz v0, :cond_2c

    .line 44
    return-void

    .line 45
    :cond_2c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 48
    move-result-object v0

    .line 49
    const-string v2, "androidx.preference.PreferenceFragment.DIALOG"

    .line 51
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_39

    .line 57
    return-void

    .line 58
    :cond_39
    instance-of v0, p1, Landroidx/preference/EditTextPreference;

    .line 60
    if-eqz v0, :cond_46

    .line 62
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 66
    invoke-static {p1}, Lmiuix/preference/EditTextPreferenceDialogFragmentCompat;->newInstance(Ljava/lang/String;)Lmiuix/preference/EditTextPreferenceDialogFragmentCompat;

    .line 69
    move-result-object p1

    .line 70
    goto :goto_5f

    .line 71
    :cond_46
    instance-of v0, p1, Landroidx/preference/ListPreference;

    .line 73
    if-eqz v0, :cond_53

    .line 75
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    .line 78
    move-result-object p1

    .line 79
    invoke-static {p1}, Lmiuix/preference/ListPreferenceDialogFragmentCompat;->newInstance(Ljava/lang/String;)Lmiuix/preference/ListPreferenceDialogFragmentCompat;

    .line 82
    move-result-object p1

    .line 83
    goto :goto_5f

    .line 84
    :cond_53
    instance-of v0, p1, Landroidx/preference/MultiSelectListPreference;

    .line 86
    if-eqz v0, :cond_6a

    .line 88
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 92
    invoke-static {p1}, Lmiuix/preference/MultiSelectListPreferenceDialogFragmentCompat;->newInstance(Ljava/lang/String;)Lmiuix/preference/MultiSelectListPreferenceDialogFragmentCompat;

    .line 95
    move-result-object p1

    .line 96
    :goto_5f
    invoke-virtual {p1, p0, v1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 99
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {p1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 106
    return-void

    .line 107
    :cond_6a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 109
    const-string v1, "Cannot display dialog for an unknown Preference type: "

    .line 111
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string p1, ". Make sure to implement onPreferenceDisplayDialog() to handle displaying a custom dialog for this Preference."

    .line 128
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object p1

    .line 135
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 138
    throw v0
.end method

.method public onExtraPaddingChanged(I)V
    .registers 2

    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    const/4 p1, 0x0

    return-object p1
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .registers 3

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .registers 5

    .line 1
    iget-boolean v0, p0, Lmiuix/preference/PreferenceFragment;->mItemSelectable:Z

    .line 3
    if-eqz v0, :cond_2e

    .line 5
    invoke-virtual {p1}, Landroidx/preference/Preference;->getOrder()I

    .line 8
    move-result v0

    .line 9
    iget v1, p0, Lmiuix/preference/PreferenceFragment;->mCurSelectedItem:I

    .line 11
    if-eq v0, v1, :cond_2e

    .line 13
    if-ltz v1, :cond_1e

    .line 15
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    .line 18
    move-result-object v1

    .line 19
    iget v2, p0, Lmiuix/preference/PreferenceFragment;->mCurSelectedItem:I

    .line 21
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_1e

    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-virtual {v1, v2}, Landroid/view/View;->setActivated(Z)V

    .line 31
    :cond_1e
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_2e

    .line 41
    const/4 v2, 0x1

    .line 42
    invoke-virtual {v1, v2}, Landroid/view/View;->setActivated(Z)V

    .line 45
    iput v0, p0, Lmiuix/preference/PreferenceFragment;->mCurSelectedItem:I

    .line 47
    :cond_2e
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    .line 50
    move-result p1

    .line 51
    return p1
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)V
    .registers 4

    return-void
.end method

.method public onProcessBindViewWithContentInset(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method public onStop()V
    .registers 1

    .line 1
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onStop()V

    .line 4
    invoke-virtual {p0}, Lmiuix/preference/PreferenceFragment;->stopHighlight()V

    .line 7
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    iget-boolean p1, p0, Lmiuix/preference/PreferenceFragment;->mIsOverlayMode:Z

    .line 6
    if-eqz p1, :cond_23

    .line 8
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mListContainer:Landroid/view/View;

    .line 10
    invoke-virtual {p0, p1}, Lmiuix/preference/PreferenceFragment;->registerCoordinateScrollView(Landroid/view/View;)V

    .line 13
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    move-result-object p1

    .line 17
    const/4 p2, 0x0

    .line 18
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 21
    invoke-virtual {p0}, Lmiuix/preference/PreferenceFragment;->getContentInset()Landroid/graphics/Rect;

    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_23

    .line 27
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 30
    move-result p2

    .line 31
    if-nez p2, :cond_23

    .line 33
    invoke-virtual {p0, p1}, Lmiuix/preference/PreferenceFragment;->onContentInsetChanged(Landroid/graphics/Rect;)V

    .line 36
    :cond_23
    return-void
.end method

.method public onViewInflated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public registerCoordinateScrollView(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/preference/PreferenceFragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_9

    .line 7
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ActionBar;->registerCoordinateScrollView(Landroid/view/View;)V

    .line 10
    :cond_9
    return-void
.end method

.method public requestDispatchContentInset()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lmiuix/appcompat/app/IFragment;

    .line 7
    if-eqz v1, :cond_f

    .line 9
    check-cast v0, Lmiuix/appcompat/app/IFragment;

    .line 11
    invoke-interface {v0}, Lmiuix/appcompat/app/IContentInsetState;->requestDispatchContentInset()Z

    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_f
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 19
    move-result-object v0

    .line 20
    instance-of v1, v0, Lmiuix/appcompat/app/AppCompatActivity;

    .line 22
    if-eqz v1, :cond_1e

    .line 24
    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    .line 26
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->requestDispatchContentInset()Z

    .line 29
    move-result v0

    .line 30
    return v0

    .line 31
    :cond_1e
    const/4 v0, 0x0

    .line 32
    return v0
.end method

.method public requestHighlight(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lmiuix/preference/PreferenceFragment$2;

    .line 7
    invoke-direct {v1, p0, p1}, Lmiuix/preference/PreferenceFragment$2;-><init>(Lmiuix/preference/PreferenceFragment;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 13
    return-void
.end method

.method public setCorrectNestedScrollMotionEventEnabled(Z)V
    .registers 2

    return-void
.end method

.method public setExtraHorizontalPaddingEnable(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingEnable:Z

    .line 3
    return-void
.end method

.method public setImmersionMenuEnabled(Z)V
    .registers 2

    return-void
.end method

.method public setItemSelectable(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/preference/PreferenceFragment;->mItemSelectable:Z

    .line 3
    return-void
.end method

.method public setThemeRes(I)V
    .registers 2

    return-void
.end method

.method public showImmersionMenu()V
    .registers 1

    return-void
.end method

.method public showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V
    .registers 3

    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public stopHighlight()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lmiuix/preference/PreferenceGroupAdapter;->stopHighlight()V

    .line 8
    :cond_7
    return-void
.end method

.method public unregisterCoordinateScrollView(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/preference/PreferenceFragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_9

    .line 7
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ActionBar;->unregisterCoordinateScrollView(Landroid/view/View;)V

    .line 10
    :cond_9
    return-void
.end method
