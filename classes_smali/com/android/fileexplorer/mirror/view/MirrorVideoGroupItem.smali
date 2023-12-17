.class public Lcom/android/fileexplorer/mirror/view/MirrorVideoGroupItem;
.super Lcom/android/fileexplorer/view/VideoGroupItem;
.source "MirrorVideoGroupItem.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VideoGroupItem"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/VideoGroupItem;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/VideoGroupItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public bindView(Lcom/android/fileexplorer/dao/file/FileItem;ZZZZLandroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .registers 9

    .line 1
    const/4 p5, 0x0

    .line 2
    if-nez p1, :cond_5

    .line 4
    const/4 v0, 0x4

    .line 5
    goto :goto_6

    .line 6
    :cond_5
    move v0, p5

    .line 7
    :goto_6
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 10
    invoke-virtual {p0, p6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    if-eqz p1, :cond_12

    .line 15
    if-eqz p2, :cond_12

    .line 17
    const/4 p6, 0x1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    move p6, p5

    .line 20
    :goto_13
    invoke-virtual {p0, p6}, Landroid/view/View;->setSelected(Z)V

    .line 23
    invoke-virtual {p0, p7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 26
    iget-object p6, p0, Lcom/android/fileexplorer/view/VideoGroupItem;->mCheckBox:Landroid/widget/CheckBox;

    .line 28
    if-eqz p3, :cond_1e

    .line 30
    goto :goto_20

    .line 31
    :cond_1e
    const/16 p5, 0x8

    .line 33
    :goto_20
    invoke-virtual {p6, p5}, Landroid/view/View;->setVisibility(I)V

    .line 36
    iget-object p3, p0, Lcom/android/fileexplorer/view/VideoGroupItem;->mCheckBox:Landroid/widget/CheckBox;

    .line 38
    invoke-virtual {p3, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 41
    const/4 p2, 0x0

    .line 42
    if-nez p1, :cond_31

    .line 44
    iget-object p1, p0, Lcom/android/fileexplorer/view/VideoGroupItem;->mImage:Landroid/widget/ImageView;

    .line 46
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    goto :goto_41

    .line 50
    :cond_31
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    iget-object p3, p0, Lcom/android/fileexplorer/view/VideoGroupItem;->mImage:Landroid/widget/ImageView;

    .line 56
    if-eqz p4, :cond_3b

    .line 58
    const-string p2, "mp4"

    .line 60
    :cond_3b
    const p4, 0x7f080128

    .line 63
    invoke-static {p1, p3, p2, p4}, Lcom/android/fileexplorer/model/FileIconHelper;->setIcon(Ljava/lang/String;Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 66
    :goto_41
    return-void
.end method

.method public bindViewForRV(Lcom/android/fileexplorer/dao/file/FileItem;ZZZZ)V
    .registers 7

    .line 1
    const/4 p5, 0x0

    .line 2
    if-nez p1, :cond_5

    .line 4
    const/4 v0, 0x4

    .line 5
    goto :goto_6

    .line 6
    :cond_5
    move v0, p5

    .line 7
    :goto_6
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 10
    if-eqz p1, :cond_11

    .line 12
    if-eqz p3, :cond_11

    .line 14
    if-eqz p2, :cond_11

    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    move v0, p5

    .line 19
    :goto_12
    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    .line 22
    iget-object v0, p0, Lcom/android/fileexplorer/view/VideoGroupItem;->mCheckBox:Landroid/widget/CheckBox;

    .line 24
    if-eqz p3, :cond_1a

    .line 26
    goto :goto_1c

    .line 27
    :cond_1a
    const/16 p5, 0x8

    .line 29
    :goto_1c
    invoke-virtual {v0, p5}, Landroid/view/View;->setVisibility(I)V

    .line 32
    iget-object p3, p0, Lcom/android/fileexplorer/view/VideoGroupItem;->mCheckBox:Landroid/widget/CheckBox;

    .line 34
    invoke-virtual {p3, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 37
    const/4 p2, 0x0

    .line 38
    if-nez p1, :cond_2d

    .line 40
    iget-object p1, p0, Lcom/android/fileexplorer/view/VideoGroupItem;->mImage:Landroid/widget/ImageView;

    .line 42
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    goto :goto_3d

    .line 46
    :cond_2d
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    iget-object p3, p0, Lcom/android/fileexplorer/view/VideoGroupItem;->mImage:Landroid/widget/ImageView;

    .line 52
    if-eqz p4, :cond_37

    .line 54
    const-string p2, "mp4"

    .line 56
    :cond_37
    const p4, 0x7f080128

    .line 59
    invoke-static {p1, p3, p2, p4}, Lcom/android/fileexplorer/model/FileIconHelper;->setIcon(Ljava/lang/String;Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 62
    :goto_3d
    return-void
.end method
