.class public Lcom/android/fileexplorer/view/PrivateListItem;
.super Landroid/widget/FrameLayout;
.source "PrivateListItem.java"


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mFileImageView:Landroid/widget/ImageView;

.field private mFileNameTextView:Landroid/widget/TextView;

.field private mFileOwnerTextView:Landroid/widget/TextView;

.field private mFileSizeTextView:Landroid/widget/TextView;

.field private mIcoGoList:Landroid/widget/ImageView;

.field private mModifiedTimeTextView:Landroid/widget/TextView;

.field private mSeparator:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Context;Lcom/android/fileexplorer/encryption/PrivateFile;ZZ)V
    .registers 11

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p3, :cond_15

    iget-object v2, p0, Lcom/android/fileexplorer/view/PrivateListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/fileexplorer/view/PrivateListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, p4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/fileexplorer/view/PrivateListItem;->mIcoGoList:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_28

    :cond_15
    iget-object v2, p0, Lcom/android/fileexplorer/view/PrivateListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/fileexplorer/view/PrivateListItem;->mIcoGoList:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->isDir()Z

    move-result v3

    if-eqz v3, :cond_24

    move v3, v1

    goto :goto_25

    :cond_24
    move v3, v0

    :goto_25
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_28
    invoke-virtual {p0, p4}, Landroid/view/View;->setSelected(Z)V

    iget-object p4, p0, Lcom/android/fileexplorer/view/PrivateListItem;->mFileOwnerTextView:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {p4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    :cond_48
    iget-object v2, p0, Lcom/android/fileexplorer/view/PrivateListItem;->mFileNameTextView:Landroid/widget/TextView;

    invoke-static {p4}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p4, p0, Lcom/android/fileexplorer/view/PrivateListItem;->mModifiedTimeTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDate()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/fileexplorer/model/DateUtils;->formatDateString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p4, p0, Lcom/android/fileexplorer/view/PrivateListItem;->mFileSizeTextView:Landroid/widget/TextView;

    invoke-virtual {p4, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p4, p0, Lcom/android/fileexplorer/view/PrivateListItem;->mSeparator:Landroid/view/View;

    invoke-virtual {p4, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->isDir()Z

    move-result p4

    if-eqz p4, :cond_90

    iget-object p4, p0, Lcom/android/fileexplorer/view/PrivateListItem;->mFileSizeTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f0f0014

    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getCount()I

    move-result v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9d

    :cond_90
    iget-object p1, p0, Lcom/android/fileexplorer/view/PrivateListItem;->mFileSizeTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/fileexplorer/util/MiuiFormatter;->formatFileSize(J)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_9d
    iget-object p1, p0, Lcom/android/fileexplorer/view/PrivateListItem;->mFileImageView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getSourcePath()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    move-result-object p1

    iget-object p4, p0, Lcom/android/fileexplorer/view/PrivateListItem;->mFileImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2, p4}, Lcom/android/fileexplorer/model/FileIconHelper;->setPrivateFileIcon(Lcom/android/fileexplorer/encryption/PrivateFile;Landroid/widget/ImageView;)V

    invoke-virtual {p2}, Lcom/android/fileexplorer/encryption/PrivateFile;->isDir()Z

    move-result p1

    if-eqz p1, :cond_bd

    if-nez p3, :cond_c2

    iget-object p1, p0, Lcom/android/fileexplorer/view/PrivateListItem;->mIcoGoList:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_c2

    :cond_bd
    iget-object p1, p0, Lcom/android/fileexplorer/view/PrivateListItem;->mIcoGoList:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_c2
    :goto_c2
    return-void
.end method

.method public onFinishInflate()V
    .registers 2

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f032c10

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/PrivateListItem;->mFileNameTextView:Landroid/widget/TextView;

    const v0, 0x7f032c11

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/PrivateListItem;->mFileOwnerTextView:Landroid/widget/TextView;

    const v0, 0x7f032f33

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/PrivateListItem;->mModifiedTimeTextView:Landroid/widget/TextView;

    const v0, 0x7f032c1c

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/PrivateListItem;->mFileSizeTextView:Landroid/widget/TextView;

    const v0, 0x7f032c1f

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/view/PrivateListItem;->mSeparator:Landroid/view/View;

    const v0, 0x7f032c13

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/PrivateListItem;->mFileImageView:Landroid/widget/ImageView;

    const v0, 0x1020001

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/fileexplorer/view/PrivateListItem;->mCheckBox:Landroid/widget/CheckBox;

    const v0, 0x7f032c42

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/fileexplorer/view/PrivateListItem;->mIcoGoList:Landroid/widget/ImageView;

    return-void
.end method
