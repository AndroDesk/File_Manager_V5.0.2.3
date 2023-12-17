.class public final Landroidx/preference/SeekBarPreference$a;
.super Ljava/lang/Object;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/SeekBarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/preference/SeekBarPreference;


# direct methods
.method public constructor <init>(Landroidx/preference/SeekBarPreference;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/preference/SeekBarPreference$a;->a:Landroidx/preference/SeekBarPreference;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 5

    .line 1
    if-eqz p3, :cond_10

    .line 3
    iget-object p3, p0, Landroidx/preference/SeekBarPreference$a;->a:Landroidx/preference/SeekBarPreference;

    .line 5
    iget-boolean v0, p3, Landroidx/preference/SeekBarPreference;->j:Z

    .line 7
    if-nez v0, :cond_c

    .line 9
    iget-boolean v0, p3, Landroidx/preference/SeekBarPreference;->e:Z

    .line 11
    if-nez v0, :cond_10

    .line 13
    :cond_c
    invoke-virtual {p3, p1}, Landroidx/preference/SeekBarPreference;->a(Landroid/widget/SeekBar;)V

    .line 16
    goto :goto_20

    .line 17
    :cond_10
    iget-object p1, p0, Landroidx/preference/SeekBarPreference$a;->a:Landroidx/preference/SeekBarPreference;

    .line 19
    iget p3, p1, Landroidx/preference/SeekBarPreference;->b:I

    .line 21
    add-int/2addr p2, p3

    .line 22
    iget-object p1, p1, Landroidx/preference/SeekBarPreference;->g:Landroid/widget/TextView;

    .line 24
    if-eqz p1, :cond_20

    .line 26
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    :cond_20
    :goto_20
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 3

    .line 1
    iget-object p1, p0, Landroidx/preference/SeekBarPreference$a;->a:Landroidx/preference/SeekBarPreference;

    .line 3
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p1, Landroidx/preference/SeekBarPreference;->e:Z

    .line 6
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/preference/SeekBarPreference$a;->a:Landroidx/preference/SeekBarPreference;

    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Landroidx/preference/SeekBarPreference;->e:Z

    .line 6
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Landroidx/preference/SeekBarPreference$a;->a:Landroidx/preference/SeekBarPreference;

    .line 12
    iget v2, v1, Landroidx/preference/SeekBarPreference;->b:I

    .line 14
    add-int/2addr v0, v2

    .line 15
    iget v2, v1, Landroidx/preference/SeekBarPreference;->a:I

    .line 17
    if-eq v0, v2, :cond_15

    .line 19
    invoke-virtual {v1, p1}, Landroidx/preference/SeekBarPreference;->a(Landroid/widget/SeekBar;)V

    .line 22
    :cond_15
    return-void
.end method
