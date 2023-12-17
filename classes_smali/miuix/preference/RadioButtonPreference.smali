.class public Lmiuix/preference/RadioButtonPreference;
.super Landroidx/preference/CheckBoxPreference;
.source "RadioButtonPreference.java"

# interfaces
.implements Landroid/widget/Checkable;
.implements Landroid/os/MessageQueue$IdleHandler;


# static fields
.field private static final MIN_FALLBACK_LINE_SPACING_ALLOWED_VERSION:I = 0x1c


# instance fields
.field private mChangeFromClick:Z

.field private mEnableFallbackLineSpacing:Z

.field private mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

.field private mItemView:Landroid/view/View;

.field private mRadioButton:Landroid/view/View;

.field private mTitleView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0}, Lmiuix/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 4
    sget v0, Lmiuix/preference/R$attr;->radioButtonPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lmiuix/preference/RadioButtonPreference;->mEnableFallbackLineSpacing:Z

    .line 3
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method

.method private setButtonChecked(Landroid/widget/CompoundButton;Z)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object p1

    .line 5
    instance-of v0, p1, Landroid/graphics/drawable/StateListDrawable;

    .line 7
    if-eqz v0, :cond_30

    .line 9
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    .line 12
    move-result-object p1

    .line 13
    instance-of v0, p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 15
    if-eqz v0, :cond_30

    .line 17
    check-cast p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 19
    if-eqz p2, :cond_24

    .line 21
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    .line 24
    move-result p2

    .line 25
    if-eqz p2, :cond_20

    .line 27
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 30
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->reset()V

    .line 33
    :cond_20
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 36
    goto :goto_30

    .line 37
    :cond_24
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    .line 40
    move-result p2

    .line 41
    if-nez p2, :cond_30

    .line 43
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 46
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 49
    :cond_30
    :goto_30
    return-void
.end method


# virtual methods
.method public callChangeListener(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreference;->mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_a

    .line 6
    invoke-interface {v0, p0, p1}, Lmiuix/preference/OnPreferenceChangeInternalListener;->onPreferenceChangeInternal(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    .line 9
    move-result v0

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    move v0, v1

    .line 12
    :goto_b
    const/4 v2, 0x0

    .line 13
    if-eqz v0, :cond_15

    .line 15
    invoke-super {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_15

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    move v1, v2

    .line 23
    :goto_16
    if-nez v1, :cond_1e

    .line 25
    iget-boolean p1, p0, Lmiuix/preference/RadioButtonPreference;->mChangeFromClick:Z

    .line 27
    if-eqz p1, :cond_1e

    .line 29
    iput-boolean v2, p0, Lmiuix/preference/RadioButtonPreference;->mChangeFromClick:Z

    .line 31
    :cond_1e
    return v1
.end method

.method public notifyChanged()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 4
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreference;->mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-interface {v0, p0}, Lmiuix/preference/OnPreferenceChangeInternalListener;->notifyPreferenceChangeInternal(Landroidx/preference/Preference;)V

    .line 11
    :cond_a
    return-void
.end method

.method public onAttached()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/preference/Preference;->onAttached()V

    .line 4
    invoke-virtual {p0}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    .line 7
    move-result-object v0

    .line 8
    instance-of v0, v0, Lmiuix/preference/RadioSetPreferenceCategory;

    .line 10
    if-eqz v0, :cond_11

    .line 12
    sget v0, Lmiuix/preference/R$layout;->miuix_preference_radiobutton:I

    .line 14
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 17
    goto :goto_16

    .line 18
    :cond_11
    sget v0, Lmiuix/preference/R$layout;->miuix_preference_radiobutton_two_state_background:I

    .line 20
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 23
    :goto_16
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/h;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/CheckBoxPreference;->onBindViewHolder(Landroidx/preference/h;)V

    .line 4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 6
    iput-object p1, p0, Lmiuix/preference/RadioButtonPreference;->mItemView:Landroid/view/View;

    .line 8
    const v0, 0x1020016

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lmiuix/preference/RadioButtonPreference;->mTitleView:Landroid/view/View;

    .line 17
    instance-of v1, v0, Landroid/widget/TextView;

    .line 19
    if-eqz v1, :cond_21

    .line 21
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 23
    const/16 v2, 0x1c

    .line 25
    if-lt v1, v2, :cond_21

    .line 27
    check-cast v0, Landroid/widget/TextView;

    .line 29
    iget-boolean v1, p0, Lmiuix/preference/RadioButtonPreference;->mEnableFallbackLineSpacing:Z

    .line 31
    invoke-static {v0, v1}, Lmiuix/appcompat/app/f;->f(Landroid/widget/TextView;Z)V

    .line 34
    :cond_21
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreference;->mTitleView:Landroid/view/View;

    .line 36
    instance-of v1, v0, Landroid/widget/Checkable;

    .line 38
    if-eqz v1, :cond_30

    .line 40
    check-cast v0, Landroid/widget/Checkable;

    .line 42
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    .line 45
    move-result v1

    .line 46
    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 49
    :cond_30
    const v0, 0x1020010

    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    move-result-object v0

    .line 56
    instance-of v1, v0, Landroid/widget/Checkable;

    .line 58
    if-eqz v1, :cond_45

    .line 60
    move-object v1, v0

    .line 61
    check-cast v1, Landroid/widget/Checkable;

    .line 63
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    .line 66
    move-result v2

    .line 67
    invoke-interface {v1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 70
    :cond_45
    iget-object v1, p0, Lmiuix/preference/RadioButtonPreference;->mTitleView:Landroid/view/View;

    .line 72
    if-eqz v1, :cond_5f

    .line 74
    if-eqz v0, :cond_5f

    .line 76
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 79
    move-result v1

    .line 80
    if-nez v1, :cond_5f

    .line 82
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 85
    move-result v1

    .line 86
    if-nez v1, :cond_5f

    .line 88
    new-instance v1, Lmiuix/preference/RadioButtonPreference$1;

    .line 90
    invoke-direct {v1, p0}, Lmiuix/preference/RadioButtonPreference$1;-><init>(Lmiuix/preference/RadioButtonPreference;)V

    .line 93
    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 96
    :cond_5f
    const v0, 0x1020001

    .line 99
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 102
    move-result-object v0

    .line 103
    iput-object v0, p0, Lmiuix/preference/RadioButtonPreference;->mRadioButton:Landroid/view/View;

    .line 105
    const/4 v1, 0x0

    .line 106
    if-eqz v0, :cond_86

    .line 108
    const/4 v2, 0x2

    .line 109
    invoke-virtual {v0, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 112
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreference;->mRadioButton:Landroid/view/View;

    .line 114
    instance-of v0, v0, Landroid/widget/CompoundButton;

    .line 116
    if-eqz v0, :cond_86

    .line 118
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    .line 121
    move-result v0

    .line 122
    if-eqz v0, :cond_86

    .line 124
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreference;->mRadioButton:Landroid/view/View;

    .line 126
    check-cast v0, Landroid/widget/CompoundButton;

    .line 128
    iget-boolean v2, p0, Lmiuix/preference/RadioButtonPreference;->mChangeFromClick:Z

    .line 130
    invoke-direct {p0, v0, v2}, Lmiuix/preference/RadioButtonPreference;->setButtonChecked(Landroid/widget/CompoundButton;Z)V

    .line 133
    iput-boolean v1, p0, Lmiuix/preference/RadioButtonPreference;->mChangeFromClick:Z

    .line 135
    :cond_86
    const/4 v0, 0x1

    .line 136
    new-array v0, v0, [Landroid/view/View;

    .line 138
    aput-object p1, v0, v1

    .line 140
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 143
    move-result-object v0

    .line 144
    invoke-interface {v0}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    .line 147
    move-result-object v0

    .line 148
    sget-object v2, Lmiuix/animation/IHoverStyle$HoverEffect;->NORMAL:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 150
    invoke-interface {v0, v2}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    .line 153
    move-result-object v0

    .line 154
    new-array v1, v1, [Lmiuix/animation/base/AnimConfig;

    .line 156
    invoke-interface {v0, p1, v1}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 159
    return-void
.end method

.method public onClick()V
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmiuix/preference/RadioButtonPreference;->mChangeFromClick:Z

    .line 4
    invoke-super {p0}, Landroidx/preference/TwoStatePreference;->onClick()V

    .line 7
    iget-boolean v0, p0, Lmiuix/preference/RadioButtonPreference;->mChangeFromClick:Z

    .line 9
    if-eqz v0, :cond_15

    .line 11
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreference;->mItemView:Landroid/view/View;

    .line 13
    if-eqz v0, :cond_15

    .line 15
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_SMALL:I

    .line 17
    sget v2, Lmiuix/view/HapticFeedbackConstants;->MIUI_TAP_NORMAL:I

    .line 19
    invoke-static {v0, v1, v2}, Lmiuix/view/HapticCompat;->performHapticFeedbackAsync(Landroid/view/View;II)V

    .line 22
    :cond_15
    return-void
.end method

.method public onDetached()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    .line 4
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 11
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 30
    return-void
.end method

.method public queueIdle()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public setOnPreferenceChangeInternalListener(Lmiuix/preference/OnPreferenceChangeInternalListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/preference/RadioButtonPreference;->mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

    .line 3
    return-void
.end method

.method public setTitleFallbackLineSpacing(Z)V
    .registers 5

    .line 1
    iput-boolean p1, p0, Lmiuix/preference/RadioButtonPreference;->mEnableFallbackLineSpacing:Z

    .line 3
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreference;->mTitleView:Landroid/view/View;

    .line 5
    instance-of v1, v0, Landroid/widget/TextView;

    .line 7
    if-eqz v1, :cond_13

    .line 9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    const/16 v2, 0x1c

    .line 13
    if-lt v1, v2, :cond_13

    .line 15
    check-cast v0, Landroid/widget/TextView;

    .line 17
    invoke-static {v0, p1}, Lmiuix/appcompat/app/f;->f(Landroid/widget/TextView;Z)V

    .line 20
    :cond_13
    return-void
.end method

.method public toggle()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 10
    return-void
.end method
