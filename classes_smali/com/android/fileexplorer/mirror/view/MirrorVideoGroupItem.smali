.class public Lcom/android/fileexplorer/mirror/view/MirrorVideoGroupItem;
.super Lcom/android/fileexplorer/view/VideoGroupItem;
.source "MirrorVideoGroupItem.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VideoGroupItem"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/VideoGroupItem;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/VideoGroupItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public bindView(Lcom/android/fileexplorer/dao/file/FileItem;ZZZZLandroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .registers 9

    const/4 p5, 0x0

    if-nez p1, :cond_5

    const/4 v0, 0x4

    goto :goto_6

    :cond_5
    move v0, p5

    :goto_6
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p1, :cond_12

    if-eqz p2, :cond_12

    const/4 p6, 0x1

    goto :goto_13

    :cond_12
    move p6, p5

    :goto_13
    invoke-virtual {p0, p6}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0, p7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p6, p0, Lcom/android/fileexplorer/view/VideoGroupItem;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz p3, :cond_1e

    goto :goto_20

    :cond_1e
    const/16 p5, 0x8

    :goto_20
    invoke-virtual {p6, p5}, Landroid/view/View;->setVisibility(I)V

    iget-object p3, p0, Lcom/android/fileexplorer/view/VideoGroupItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p3, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    const/4 p2, 0x0

    if-nez p1, :cond_31

    iget-object p1, p0, Lcom/android/fileexplorer/view/VideoGroupItem;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_41

    :cond_31
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/android/fileexplorer/view/VideoGroupItem;->mImage:Landroid/widget/ImageView;

    if-eqz p4, :cond_3b

    const-string p2, "mp4"

    :cond_3b
    const p4, 0x7f080128

    invoke-static {p1, p3, p2, p4}, Lcom/android/fileexplorer/model/FileIconHelper;->setIcon(Ljava/lang/String;Landroid/widget/ImageView;Ljava/lang/String;I)V

    :goto_41
    return-void
.end method

.method public bindViewForRV(Lcom/android/fileexplorer/dao/file/FileItem;ZZZZ)V
    .registers 7

    const/4 p5, 0x0

    if-nez p1, :cond_5

    const/4 v0, 0x4

    goto :goto_6

    :cond_5
    move v0, p5

    :goto_6
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_11

    if-eqz p3, :cond_11

    if-eqz p2, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    move v0, p5

    :goto_12
    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/VideoGroupItem;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz p3, :cond_1a

    goto :goto_1c

    :cond_1a
    const/16 p5, 0x8

    :goto_1c
    invoke-virtual {v0, p5}, Landroid/view/View;->setVisibility(I)V

    iget-object p3, p0, Lcom/android/fileexplorer/view/VideoGroupItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p3, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    const/4 p2, 0x0

    if-nez p1, :cond_2d

    iget-object p1, p0, Lcom/android/fileexplorer/view/VideoGroupItem;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3d

    :cond_2d
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/android/fileexplorer/view/VideoGroupItem;->mImage:Landroid/widget/ImageView;

    if-eqz p4, :cond_37

    const-string p2, "mp4"

    :cond_37
    const p4, 0x7f080128

    invoke-static {p1, p3, p2, p4}, Lcom/android/fileexplorer/model/FileIconHelper;->setIcon(Ljava/lang/String;Landroid/widget/ImageView;Ljava/lang/String;I)V

    :goto_3d
    return-void
.end method
