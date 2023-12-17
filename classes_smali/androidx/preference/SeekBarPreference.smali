.class public Landroidx/preference/SeekBarPreference;
.super Landroidx/preference/Preference;
.source "SeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/SeekBarPreference$SavedState;
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Z

.field public f:Landroid/widget/SeekBar;

.field public g:Landroid/widget/TextView;

.field public h:Z

.field public i:Z

.field public j:Z

.field public final k:Landroidx/preference/SeekBarPreference$a;

.field public final l:Landroidx/preference/SeekBarPreference$b;


# direct methods
.method public constructor <init>()V
    .registers 1

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 19
    sget v0, Landroidx/preference/i;->seekBarPreferenceStyle:I

    .line 20
    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    new-instance v1, Landroidx/preference/SeekBarPreference$a;

    invoke-direct {v1, p0}, Landroidx/preference/SeekBarPreference$a;-><init>(Landroidx/preference/SeekBarPreference;)V

    iput-object v1, p0, Landroidx/preference/SeekBarPreference;->k:Landroidx/preference/SeekBarPreference$a;

    .line 3
    new-instance v1, Landroidx/preference/SeekBarPreference$b;

    invoke-direct {v1, p0}, Landroidx/preference/SeekBarPreference$b;-><init>(Landroidx/preference/SeekBarPreference;)V

    iput-object v1, p0, Landroidx/preference/SeekBarPreference;->l:Landroidx/preference/SeekBarPreference$b;

    .line 4
    sget-object v1, Landroidx/preference/q;->SeekBarPreference:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 5
    sget p2, Landroidx/preference/q;->SeekBarPreference_min:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroidx/preference/SeekBarPreference;->b:I

    .line 6
    sget p2, Landroidx/preference/q;->SeekBarPreference_android_max:I

    const/16 p3, 0x64

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 7
    iget p3, p0, Landroidx/preference/SeekBarPreference;->b:I

    if-ge p2, p3, :cond_2d

    move p2, p3

    .line 8
    :cond_2d
    iget p3, p0, Landroidx/preference/SeekBarPreference;->c:I

    if-eq p2, p3, :cond_36

    .line 9
    iput p2, p0, Landroidx/preference/SeekBarPreference;->c:I

    .line 10
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 11
    :cond_36
    sget p2, Landroidx/preference/q;->SeekBarPreference_seekBarIncrement:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 12
    iget p3, p0, Landroidx/preference/SeekBarPreference;->d:I

    if-eq p2, p3, :cond_52

    .line 13
    iget p3, p0, Landroidx/preference/SeekBarPreference;->c:I

    iget v1, p0, Landroidx/preference/SeekBarPreference;->b:I

    sub-int/2addr p3, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Landroidx/preference/SeekBarPreference;->d:I

    .line 14
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 15
    :cond_52
    sget p2, Landroidx/preference/q;->SeekBarPreference_adjustable:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/SeekBarPreference;->h:Z

    .line 16
    sget p2, Landroidx/preference/q;->SeekBarPreference_showSeekBarValue:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/SeekBarPreference;->i:Z

    .line 17
    sget p2, Landroidx/preference/q;->SeekBarPreference_updatesContinuously:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/SeekBarPreference;->j:Z

    .line 18
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/SeekBar;)V
    .registers 4

    .line 1
    iget v0, p0, Landroidx/preference/SeekBarPreference;->b:I

    .line 3
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 6
    move-result v1

    .line 7
    add-int/2addr v1, v0

    .line 8
    iget v0, p0, Landroidx/preference/SeekBarPreference;->a:I

    .line 10
    if-eq v1, v0, :cond_49

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_34

    .line 22
    iget p1, p0, Landroidx/preference/SeekBarPreference;->b:I

    .line 24
    if-ge v1, p1, :cond_1a

    .line 26
    move v1, p1

    .line 27
    :cond_1a
    iget p1, p0, Landroidx/preference/SeekBarPreference;->c:I

    .line 29
    if-le v1, p1, :cond_1f

    .line 31
    move v1, p1

    .line 32
    :cond_1f
    iget p1, p0, Landroidx/preference/SeekBarPreference;->a:I

    .line 34
    if-eq v1, p1, :cond_49

    .line 36
    iput v1, p0, Landroidx/preference/SeekBarPreference;->a:I

    .line 38
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->g:Landroid/widget/TextView;

    .line 40
    if-eqz p1, :cond_30

    .line 42
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    :cond_30
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->persistInt(I)Z

    .line 52
    goto :goto_49

    .line 53
    :cond_34
    iget v0, p0, Landroidx/preference/SeekBarPreference;->a:I

    .line 55
    iget v1, p0, Landroidx/preference/SeekBarPreference;->b:I

    .line 57
    sub-int/2addr v0, v1

    .line 58
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 61
    iget p1, p0, Landroidx/preference/SeekBarPreference;->a:I

    .line 63
    iget-object v0, p0, Landroidx/preference/SeekBarPreference;->g:Landroid/widget/TextView;

    .line 65
    if-eqz v0, :cond_49

    .line 67
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    :cond_49
    :goto_49
    return-void
.end method

.method public final onBindViewHolder(Landroidx/preference/h;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/h;)V

    .line 4
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 6
    iget-object v1, p0, Landroidx/preference/SeekBarPreference;->l:Landroidx/preference/SeekBarPreference$b;

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 11
    sget v0, Landroidx/preference/l;->seekbar:I

    .line 13
    invoke-virtual {p1, v0}, Landroidx/preference/h;->a(I)Landroid/view/View;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/SeekBar;

    .line 19
    iput-object v0, p0, Landroidx/preference/SeekBarPreference;->f:Landroid/widget/SeekBar;

    .line 21
    sget v0, Landroidx/preference/l;->seekbar_value:I

    .line 23
    invoke-virtual {p1, v0}, Landroidx/preference/h;->a(I)Landroid/view/View;

    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Landroid/widget/TextView;

    .line 29
    iput-object p1, p0, Landroidx/preference/SeekBarPreference;->g:Landroid/widget/TextView;

    .line 31
    iget-boolean v0, p0, Landroidx/preference/SeekBarPreference;->i:Z

    .line 33
    if-eqz v0, :cond_27

    .line 35
    const/4 v0, 0x0

    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 39
    goto :goto_2f

    .line 40
    :cond_27
    const/16 v0, 0x8

    .line 42
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 45
    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Landroidx/preference/SeekBarPreference;->g:Landroid/widget/TextView;

    .line 48
    :goto_2f
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->f:Landroid/widget/SeekBar;

    .line 50
    if-nez p1, :cond_3b

    .line 52
    const-string p1, "SeekBarPreference"

    .line 54
    const-string v0, "SeekBar view is null in onBindViewHolder."

    .line 56
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void

    .line 60
    :cond_3b
    iget-object v0, p0, Landroidx/preference/SeekBarPreference;->k:Landroidx/preference/SeekBarPreference$a;

    .line 62
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 65
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->f:Landroid/widget/SeekBar;

    .line 67
    iget v0, p0, Landroidx/preference/SeekBarPreference;->c:I

    .line 69
    iget v1, p0, Landroidx/preference/SeekBarPreference;->b:I

    .line 71
    sub-int/2addr v0, v1

    .line 72
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 75
    iget p1, p0, Landroidx/preference/SeekBarPreference;->d:I

    .line 77
    if-eqz p1, :cond_54

    .line 79
    iget-object v0, p0, Landroidx/preference/SeekBarPreference;->f:Landroid/widget/SeekBar;

    .line 81
    invoke-virtual {v0, p1}, Landroid/widget/AbsSeekBar;->setKeyProgressIncrement(I)V

    .line 84
    goto :goto_5c

    .line 85
    :cond_54
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->f:Landroid/widget/SeekBar;

    .line 87
    invoke-virtual {p1}, Landroid/widget/AbsSeekBar;->getKeyProgressIncrement()I

    .line 90
    move-result p1

    .line 91
    iput p1, p0, Landroidx/preference/SeekBarPreference;->d:I

    .line 93
    :goto_5c
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->f:Landroid/widget/SeekBar;

    .line 95
    iget v0, p0, Landroidx/preference/SeekBarPreference;->a:I

    .line 97
    iget v1, p0, Landroidx/preference/SeekBarPreference;->b:I

    .line 99
    sub-int/2addr v0, v1

    .line 100
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 103
    iget p1, p0, Landroidx/preference/SeekBarPreference;->a:I

    .line 105
    iget-object v0, p0, Landroidx/preference/SeekBarPreference;->g:Landroid/widget/TextView;

    .line 107
    if-eqz v0, :cond_73

    .line 109
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    :cond_73
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->f:Landroid/widget/SeekBar;

    .line 118
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    .line 121
    move-result v0

    .line 122
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 125
    return-void
.end method

.method public final onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 5
    move-result p1

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    .line 1
    if-eqz p1, :cond_28

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 7
    const-class v1, Landroidx/preference/SeekBarPreference$SavedState;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_f

    .line 15
    goto :goto_28

    .line 16
    :cond_f
    check-cast p1, Landroidx/preference/SeekBarPreference$SavedState;

    .line 18
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 21
    move-result-object v0

    .line 22
    invoke-super {p0, v0}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 25
    iget v0, p1, Landroidx/preference/SeekBarPreference$SavedState;->a:I

    .line 27
    iput v0, p0, Landroidx/preference/SeekBarPreference;->a:I

    .line 29
    iget v0, p1, Landroidx/preference/SeekBarPreference$SavedState;->b:I

    .line 31
    iput v0, p0, Landroidx/preference/SeekBarPreference;->b:I

    .line 33
    iget p1, p1, Landroidx/preference/SeekBarPreference$SavedState;->c:I

    .line 35
    iput p1, p0, Landroidx/preference/SeekBarPreference;->c:I

    .line 37
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 40
    return-void

    .line 41
    :cond_28
    :goto_28
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 44
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
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
    new-instance v1, Landroidx/preference/SeekBarPreference$SavedState;

    .line 14
    invoke-direct {v1, v0}, Landroidx/preference/SeekBarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 17
    iget v0, p0, Landroidx/preference/SeekBarPreference;->a:I

    .line 19
    iput v0, v1, Landroidx/preference/SeekBarPreference$SavedState;->a:I

    .line 21
    iget v0, p0, Landroidx/preference/SeekBarPreference;->b:I

    .line 23
    iput v0, v1, Landroidx/preference/SeekBarPreference$SavedState;->b:I

    .line 25
    iget v0, p0, Landroidx/preference/SeekBarPreference;->c:I

    .line 27
    iput v0, v1, Landroidx/preference/SeekBarPreference$SavedState;->c:I

    .line 29
    return-object v1
.end method

.method public final onSetInitialValue(Ljava/lang/Object;)V
    .registers 4

    .line 1
    if-nez p1, :cond_7

    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object p1

    .line 8
    :cond_7
    check-cast p1, Ljava/lang/Integer;

    .line 10
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 13
    move-result p1

    .line 14
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->getPersistedInt(I)I

    .line 17
    move-result p1

    .line 18
    iget v0, p0, Landroidx/preference/SeekBarPreference;->b:I

    .line 20
    if-ge p1, v0, :cond_16

    .line 22
    move p1, v0

    .line 23
    :cond_16
    iget v0, p0, Landroidx/preference/SeekBarPreference;->c:I

    .line 25
    if-le p1, v0, :cond_1b

    .line 27
    move p1, v0

    .line 28
    :cond_1b
    iget v0, p0, Landroidx/preference/SeekBarPreference;->a:I

    .line 30
    if-eq p1, v0, :cond_32

    .line 32
    iput p1, p0, Landroidx/preference/SeekBarPreference;->a:I

    .line 34
    iget-object v0, p0, Landroidx/preference/SeekBarPreference;->g:Landroid/widget/TextView;

    .line 36
    if-eqz v0, :cond_2c

    .line 38
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    :cond_2c
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistInt(I)Z

    .line 48
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 51
    :cond_32
    return-void
.end method
