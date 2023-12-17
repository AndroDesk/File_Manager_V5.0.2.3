.class Lmiuix/appcompat/widget/Spinner$DialogPopup;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Lmiuix/appcompat/widget/Spinner$SpinnerPopup;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/widget/Spinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DialogPopup"
.end annotation


# instance fields
.field private mListAdapter:Landroid/widget/ListAdapter;

.field public mPopup:Lmiuix/appcompat/app/AlertDialog;

.field private mPrompt:Ljava/lang/CharSequence;

.field public final synthetic this$0:Lmiuix/appcompat/widget/Spinner;


# direct methods
.method private constructor <init>(Lmiuix/appcompat/widget/Spinner;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/appcompat/widget/Spinner;Lmiuix/appcompat/widget/Spinner$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lmiuix/appcompat/widget/Spinner$DialogPopup;-><init>(Lmiuix/appcompat/widget/Spinner;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->mPopup:Lmiuix/appcompat/app/AlertDialog;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->mPopup:Lmiuix/appcompat/app/AlertDialog;

    .line 11
    :cond_a
    return-void
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHintText()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    .line 3
    return-object v0
.end method

.method public getHorizontalOffset()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getHorizontalOriginalOffset()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getVerticalOffset()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isShowing()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->mPopup:Lmiuix/appcompat/app/AlertDialog;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    .line 3
    invoke-virtual {p1, p2}, Lmiuix/appcompat/widget/Spinner;->setSelection(I)V

    .line 6
    iget-object p1, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    .line 8
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_POPUP_LIGHT:I

    .line 10
    invoke-static {p1, v0}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    .line 13
    iget-object p1, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    .line 15
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_20

    .line 21
    iget-object p1, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    .line 23
    const/4 v0, 0x0

    .line 24
    iget-object v1, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    .line 26
    invoke-interface {v1, p2}, Landroid/widget/Adapter;->getItemId(I)J

    .line 29
    move-result-wide v1

    .line 30
    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    .line 33
    :cond_20
    invoke-virtual {p0}, Lmiuix/appcompat/widget/Spinner$DialogPopup;->dismiss()V

    .line 36
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    .line 3
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    const-string p1, "Spinner"

    .line 3
    const-string v0, "Cannot set popup background for MODE_DIALOG, ignoring"

    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    return-void
.end method

.method public setHorizontalOffset(I)V
    .registers 3

    .line 1
    const-string p1, "Spinner"

    .line 3
    const-string v0, "Cannot set horizontal offset for MODE_DIALOG, ignoring"

    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    return-void
.end method

.method public setHorizontalOriginalOffset(I)V
    .registers 3

    .line 1
    const-string p1, "Spinner"

    .line 3
    const-string v0, "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring"

    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    return-void
.end method

.method public setPromptText(Ljava/lang/CharSequence;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    .line 3
    return-void
.end method

.method public setVerticalOffset(I)V
    .registers 3

    .line 1
    const-string p1, "Spinner"

    .line 3
    const-string v0, "Cannot set vertical offset for MODE_DIALOG, ignoring"

    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    return-void
.end method

.method public show(II)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v1}, Lmiuix/appcompat/widget/Spinner;->getPopupContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3
    iget-object v1, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    if-eqz v1, :cond_17

    .line 4
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 5
    :cond_17
    iget-object v1, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    .line 6
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v2

    .line 7
    invoke-virtual {v0, v1, v2, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lmiuix/appcompat/widget/Spinner$DialogPopup$1;

    invoke-direct {v1, p0}, Lmiuix/appcompat/widget/Spinner$DialogPopup$1;-><init>(Lmiuix/appcompat/widget/Spinner$DialogPopup;)V

    .line 8
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->mPopup:Lmiuix/appcompat/app/AlertDialog;

    .line 10
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Landroid/view/View;->setTextDirection(I)V

    .line 12
    invoke-virtual {v0, p2}, Landroid/view/View;->setTextAlignment(I)V

    .line 13
    iget-object p1, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->mPopup:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public show(IIFF)V
    .registers 5

    .line 14
    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/widget/Spinner$DialogPopup;->show(II)V

    return-void
.end method
