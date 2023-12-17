.class public Lmiuix/appcompat/app/AlertDialog$Builder;
.super Ljava/lang/Object;
.source "AlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final P:Lmiuix/appcompat/app/AlertController$AlertParams;

.field private final mTheme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 6

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lmiuix/appcompat/app/AlertController$AlertParams;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 4
    invoke-static {p1, p2}, Lmiuix/appcompat/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    .line 5
    iput p2, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->mTheme:I

    return-void
.end method


# virtual methods
.method public addButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;I)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 7

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    .line 3
    iget-object v0, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mExtraButtonList:Ljava/util/List;

    .line 5
    new-instance v1, Lmiuix/appcompat/app/AlertController$ButtonInfo;

    .line 7
    const v2, 0x101032f

    .line 10
    invoke-direct {v1, p1, v2, p2, p3}, Lmiuix/appcompat/app/AlertController$ButtonInfo;-><init>(Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;I)V

    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    return-object p0
.end method

.method public addNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;I)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 7

    .line 1
    const v0, 0x101048b

    .line 4
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    .line 6
    iget-object v1, v1, Lmiuix/appcompat/app/AlertController$AlertParams;->mExtraButtonList:Ljava/util/List;

    .line 8
    new-instance v2, Lmiuix/appcompat/app/AlertController$ButtonInfo;

    .line 10
    invoke-direct {v2, p1, v0, p2, p3}, Lmiuix/appcompat/app/AlertController$ButtonInfo;-><init>(Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;I)V

    .line 13
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    return-object p0
.end method

.method public addNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;I)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 7

    .line 1
    const v0, 0x101048a

    .line 4
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    .line 6
    iget-object v1, v1, Lmiuix/appcompat/app/AlertController$AlertParams;->mExtraButtonList:Ljava/util/List;

    .line 8
    new-instance v2, Lmiuix/appcompat/app/AlertController$ButtonInfo;

    .line 10
    invoke-direct {v2, p1, v0, p2, p3}, Lmiuix/appcompat/app/AlertController$ButtonInfo;-><init>(Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;I)V

    .line 13
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    return-object p0
.end method

.method public addPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;I)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 7

    .line 1
    const v0, 0x1010489

    .line 4
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    .line 6
    iget-object v1, v1, Lmiuix/appcompat/app/AlertController$AlertParams;->mExtraButtonList:Ljava/util/List;

    .line 8
    new-instance v2, Lmiuix/appcompat/app/AlertController$ButtonInfo;

    .line 10
    invoke-direct {v2, p1, v0, p2, p3}, Lmiuix/appcompat/app/AlertController$ButtonInfo;-><init>(Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;I)V

    .line 13
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    return-object p0
.end method

.method public clearButtons()Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    .line 3
    iget-object v0, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mExtraButtonList:Ljava/util/List;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    return-object p0
.end method

.method public create()Lmiuix/appcompat/app/AlertDialog;
    .registers 4

    .line 1
    new-instance v0, Lmiuix/appcompat/app/AlertDialog;

    .line 3
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    .line 5
    iget-object v1, v1, Lmiuix/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 7
    iget v2, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->mTheme:I

    .line 9
    invoke-direct {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 12
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    .line 14
    iget-object v2, v0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    .line 16
    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertController$AlertParams;->apply(Lmiuix/appcompat/app/AlertController;)V

    .line 19
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    .line 21
    iget-boolean v1, v1, Lmiuix/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    .line 23
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 26
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    .line 28
    iget-boolean v1, v1, Lmiuix/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    .line 30
    if-eqz v1, :cond_23

    .line 32
    const/4 v1, 0x1

    .line 33
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 36
    :cond_23
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    .line 38
    iget-object v1, v1, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 40
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 43
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    .line 45
    iget-object v1, v1, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 47
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 50
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    .line 52
    iget-object v1, v1, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnShowListener:Landroid/content/DialogInterface$OnShowListener;

    .line 54
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 57
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    .line 59
    iget-object v1, v1, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnDialogShowAnimListener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    .line 61
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->setOnShowAnimListener(Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V

    .line 64
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    .line 66
    iget-object v1, v1, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 68
    if-eqz v1, :cond_48

    .line 70
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 73
    :cond_48
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    .line 3
    iget-object v0, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 5
    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    .line 3
    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 5
    iput-object p2, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 7
    return-object p0
.end method

.method public setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    .line 3
    iput-boolean p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    .line 5
    return-object p0
.end method

.method public setCheckBox(ZLjava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    .line 3
    iput-boolean p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mIsChecked:Z

    .line 5
    iput-object p2, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mCheckBoxMessage:Ljava/lang/CharSequence;

    .line 7
    return-object p0
.end method

.method public setComment(I)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-object v1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mComment:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setComment(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 3

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mComment:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    .line 3
    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 5
    iput-object p3, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 7
    iput-object p2, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 9
    return-object p0
.end method

.method public setCustomTitle(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    .line 3
    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    .line 5
    return-object p0
.end method

.method public setEnableDialogImmersive(Z)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    .line 3
    iput-boolean p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mEnableDialogImmersive:Z

    .line 5
    return-object p0
.end method

.method public setEnableEnterAnim(Z)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    .line 3
    iput-boolean p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mEnableEnterAnim:Z

    .line 5
    return-object p0
.end method

.method public setHapticFeedbackEnabled(Z)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    .line 3
    iput-boolean p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mHapticFeedbackEnabled:Z

    .line 5
    return-object p0
.end method

.method public setIcon(I)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mIconId:I

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 3

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 5

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    .line 3
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 6
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    .line 8
    iget-object v1, v1, Lmiuix/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 18
    iget-object p1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    .line 20
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    .line 22
    iput v0, p1, Lmiuix/appcompat/app/AlertController$AlertParams;->mIconId:I

    .line 24
    return-object p0
.end method

.method public setIconSize(II)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    .line 3
    iput p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->iconWidth:I

    .line 5
    iput p2, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->iconHeight:I

    .line 7
    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-object v1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 2
    iget-object p1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p2, p1, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 4

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 4
    iput-object p2, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-object v1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 3

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-object v1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 2
    iget-object p1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p3, p1, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 3
    iput-object p2, p1, Lmiuix/appcompat/app/AlertController$AlertParams;->mCheckedItems:[Z

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p1, Lmiuix/appcompat/app/AlertController$AlertParams;->mIsMultiChoice:Z

    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 6

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 10
    iput-object p4, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 11
    iput-object p2, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    .line 12
    iput-object p3, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mIsMultiChoice:Z

    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 5

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 6
    iput-object p3, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 7
    iput-object p2, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mCheckedItems:[Z

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mIsMultiChoice:Z

    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-object v1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 2
    iget-object p1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p2, p1, Lmiuix/appcompat/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 4

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 4
    iput-object p2, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-object v1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 2
    iget-object p1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p2, p1, Lmiuix/appcompat/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 4

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 4
    iput-object p2, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNonImmersiveDialogHeight(I)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    .line 3
    iput p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mNonImmersiveDialogHeight:I

    .line 5
    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    .line 3
    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 5
    return-object p0
.end method

.method public setOnDialogShowAnimListener(Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    .line 3
    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnDialogShowAnimListener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    .line 5
    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    .line 3
    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 5
    return-object p0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    .line 3
    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 5
    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    .line 3
    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 5
    return-object p0
.end method

.method public setOnPanelSizeChangedListener(Lmiuix/appcompat/app/AlertDialog$OnPanelSizeChangedListener;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    .line 3
    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mPanelSizeChangedListener:Lmiuix/appcompat/app/AlertDialog$OnPanelSizeChangedListener;

    .line 5
    return-object p0
.end method

.method public setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    .line 3
    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnShowListener:Landroid/content/DialogInterface$OnShowListener;

    .line 5
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-object v1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 2
    iget-object p1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p2, p1, Lmiuix/appcompat/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 4

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 4
    iput-object p2, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPreferLandscape(Z)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    .line 3
    iput-boolean p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mPreferLandscape:Z

    .line 5
    return-object p0
.end method

.method public setRelayoutWhenSwitchToLandscape(Z)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    .line 3
    iput-boolean p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mPreferLandscape:Z

    .line 5
    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-object v1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 2
    iget-object p1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p3, p1, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 3
    iput p2, p1, Lmiuix/appcompat/app/AlertController$AlertParams;->mCheckedItem:I

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p1, Lmiuix/appcompat/app/AlertController$AlertParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 6

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 6
    iput-object p4, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 7
    iput p2, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mCheckedItem:I

    .line 8
    iput-object p3, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 5

    .line 14
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 15
    iput-object p3, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 16
    iput p2, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mCheckedItem:I

    const/4 p1, 0x1

    .line 17
    iput-boolean p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 5

    .line 10
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 11
    iput-object p3, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 12
    iput p2, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mCheckedItem:I

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-object v1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 3

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setUseLiteDrawable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    .line 3
    if-eqz p1, :cond_7

    .line 5
    const/16 p1, 0x3e7

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 p1, 0x0

    .line 9
    :goto_8
    iput p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mLiteVersion:I

    .line 11
    return-object p0
.end method

.method public setView(I)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    const/4 v1, 0x0

    iput-object v1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 2
    iput p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mViewLayoutResId:I

    return-object p0
.end method

.method public setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 3

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const/4 p1, 0x0

    .line 4
    iput p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mViewLayoutResId:I

    return-object p0
.end method

.method public show()Lmiuix/appcompat/app/AlertDialog;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 8
    return-object v0
.end method

.method public useSmallIcon(Z)Lmiuix/appcompat/app/AlertDialog$Builder;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    .line 3
    iput-boolean p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mSmallIcon:Z

    .line 5
    return-object p0
.end method
