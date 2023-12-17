.class public Lmiuix/navigator/BottomTab;
.super Ljava/lang/Object;
.source "BottomTab.java"

# interfaces
.implements Lmiuix/navigator/NavigationItem;


# static fields
.field public static final NO_ICON:I


# instance fields
.field public categoryOrder:I

.field public groupId:I

.field public id:I

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private mIconTintList:Landroid/content/res/ColorStateList;

.field private mIconTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mNavigatorInfo:Lmiuix/navigator/navigatorinfo/NavigatorInfo;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleResId:I

.field public order:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lmiuix/navigator/BottomTab;->groupId:I

    .line 7
    iput v0, p0, Lmiuix/navigator/BottomTab;->id:I

    .line 9
    iput v0, p0, Lmiuix/navigator/BottomTab;->categoryOrder:I

    .line 11
    iput v0, p0, Lmiuix/navigator/BottomTab;->order:I

    .line 13
    iput v0, p0, Lmiuix/navigator/BottomTab;->mTitleResId:I

    .line 15
    const/4 v1, 0x0

    .line 16
    iput-object v1, p0, Lmiuix/navigator/BottomTab;->mTitle:Ljava/lang/CharSequence;

    .line 18
    iput v0, p0, Lmiuix/navigator/BottomTab;->mIconResId:I

    .line 20
    iput-object v1, p0, Lmiuix/navigator/BottomTab;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 22
    iput-object v1, p0, Lmiuix/navigator/BottomTab;->mIconTintList:Landroid/content/res/ColorStateList;

    .line 24
    iput-object v1, p0, Lmiuix/navigator/BottomTab;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 26
    iput-object v1, p0, Lmiuix/navigator/BottomTab;->mContentDescription:Ljava/lang/CharSequence;

    .line 28
    return-void
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/BottomTab;->mContentDescription:Ljava/lang/CharSequence;

    .line 3
    return-object v0
.end method

.method public getIconDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/BottomTab;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    return-object v0
.end method

.method public getIconResId()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/navigator/BottomTab;->mIconResId:I

    .line 3
    return v0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/BottomTab;->mIconTintList:Landroid/content/res/ColorStateList;

    .line 3
    return-object v0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/BottomTab;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 3
    return-object v0
.end method

.method public getNavigatorInfo()Lmiuix/navigator/navigatorinfo/NavigatorInfo;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/BottomTab;->mNavigatorInfo:Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    .line 3
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/navigator/BottomTab;->mTitle:Ljava/lang/CharSequence;

    .line 3
    return-object v0
.end method

.method public getTitleResId()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/navigator/BottomTab;->mTitleResId:I

    .line 3
    return v0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Lmiuix/navigator/BottomTab;
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigator/BottomTab;->mContentDescription:Ljava/lang/CharSequence;

    .line 3
    return-object p0
.end method

.method public setIcon(I)Lmiuix/navigator/BottomTab;
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/navigator/BottomTab;->mIconResId:I

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lmiuix/navigator/BottomTab;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lmiuix/navigator/BottomTab;
    .registers 3

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lmiuix/navigator/BottomTab;->mIconResId:I

    .line 4
    iput-object p1, p0, Lmiuix/navigator/BottomTab;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)Lmiuix/navigator/BottomTab;
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigator/BottomTab;->mIconTintList:Landroid/content/res/ColorStateList;

    .line 3
    return-object p0
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Lmiuix/navigator/BottomTab;
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigator/BottomTab;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 3
    return-object p0
.end method

.method public setNavigatorInfo(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigator/BottomTab;->mNavigatorInfo:Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    .line 3
    return-void
.end method

.method public setTitle(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/navigator/BottomTab;->mTitleResId:I

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lmiuix/navigator/BottomTab;->mTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lmiuix/navigator/BottomTab;->mTitleResId:I

    .line 4
    iput-object p1, p0, Lmiuix/navigator/BottomTab;->mTitle:Ljava/lang/CharSequence;

    return-void
.end method
