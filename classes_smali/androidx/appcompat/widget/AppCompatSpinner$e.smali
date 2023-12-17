.class public final Landroidx/appcompat/widget/AppCompatSpinner$e;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroidx/appcompat/widget/AppCompatSpinner$h;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/AppCompatSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public a:Landroidx/appcompat/app/f;

.field public b:Landroid/widget/ListAdapter;

.field public c:Ljava/lang/CharSequence;

.field public final synthetic d:Landroidx/appcompat/widget/AppCompatSpinner;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/AppCompatSpinner;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$e;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$e;->a:Landroidx/appcompat/app/f;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/app/q;->dismiss()V

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$e;->a:Landroidx/appcompat/app/f;

    .line 11
    :cond_a
    return-void
.end method

.method public final getBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getHintText()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$e;->c:Ljava/lang/CharSequence;

    .line 3
    return-object v0
.end method

.method public final getHorizontalOffset()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final getVerticalOffset()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final isShowing()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$e;->a:Landroidx/appcompat/app/f;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 8
    move-result v0

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    return v0
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .line 1
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$e;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 3
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 6
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$e;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 8
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_19

    .line 14
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$e;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 16
    const/4 v0, 0x0

    .line 17
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatSpinner$e;->b:Landroid/widget/ListAdapter;

    .line 19
    invoke-interface {v1, p2}, Landroid/widget/Adapter;->getItemId(I)J

    .line 22
    move-result-wide v1

    .line 23
    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    .line 26
    :cond_19
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner$e;->dismiss()V

    .line 29
    return-void
.end method

.method public final setAdapter(Landroid/widget/ListAdapter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$e;->b:Landroid/widget/ListAdapter;

    .line 3
    return-void
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    const-string p1, "AppCompatSpinner"

    .line 3
    const-string v0, "Cannot set popup background for MODE_DIALOG, ignoring"

    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    return-void
.end method

.method public final setHorizontalOffset(I)V
    .registers 3

    .line 1
    const-string p1, "AppCompatSpinner"

    .line 3
    const-string v0, "Cannot set horizontal offset for MODE_DIALOG, ignoring"

    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    return-void
.end method

.method public final setHorizontalOriginalOffset(I)V
    .registers 3

    .line 1
    const-string p1, "AppCompatSpinner"

    .line 3
    const-string v0, "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring"

    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    return-void
.end method

.method public final setPromptText(Ljava/lang/CharSequence;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$e;->c:Ljava/lang/CharSequence;

    .line 3
    return-void
.end method

.method public final setVerticalOffset(I)V
    .registers 3

    .line 1
    const-string p1, "AppCompatSpinner"

    .line 3
    const-string v0, "Cannot set vertical offset for MODE_DIALOG, ignoring"

    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    return-void
.end method

.method public final show(II)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$e;->b:Landroid/widget/ListAdapter;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    new-instance v0, Landroidx/appcompat/app/f$a;

    .line 8
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatSpinner$e;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 10
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatSpinner;->getPopupContext()Landroid/content/Context;

    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Landroidx/appcompat/app/f$a;-><init>(Landroid/content/Context;)V

    .line 17
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatSpinner$e;->c:Ljava/lang/CharSequence;

    .line 19
    if-eqz v1, :cond_17

    .line 21
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/f$a;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/f$a;

    .line 24
    :cond_17
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatSpinner$e;->b:Landroid/widget/ListAdapter;

    .line 26
    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatSpinner$e;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 28
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 31
    move-result v2

    .line 32
    invoke-virtual {v0, v1, v2, p0}, Landroidx/appcompat/app/f$a;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/f$a;

    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroidx/appcompat/app/f$a;->create()Landroidx/appcompat/app/f;

    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$e;->a:Landroidx/appcompat/app/f;

    .line 42
    iget-object v0, v0, Landroidx/appcompat/app/f;->a:Landroidx/appcompat/app/AlertController;

    .line 44
    iget-object v0, v0, Landroidx/appcompat/app/AlertController;->g:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 46
    invoke-static {v0, p1}, Landroidx/appcompat/widget/AppCompatSpinner$c;->d(Landroid/view/View;I)V

    .line 49
    invoke-static {v0, p2}, Landroidx/appcompat/widget/AppCompatSpinner$c;->c(Landroid/view/View;I)V

    .line 52
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$e;->a:Landroidx/appcompat/app/f;

    .line 54
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 57
    return-void
.end method
