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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmiuix/navigator/BottomTab;->groupId:I

    iput v0, p0, Lmiuix/navigator/BottomTab;->id:I

    iput v0, p0, Lmiuix/navigator/BottomTab;->categoryOrder:I

    iput v0, p0, Lmiuix/navigator/BottomTab;->order:I

    iput v0, p0, Lmiuix/navigator/BottomTab;->mTitleResId:I

    const/4 v1, 0x0

    iput-object v1, p0, Lmiuix/navigator/BottomTab;->mTitle:Ljava/lang/CharSequence;

    iput v0, p0, Lmiuix/navigator/BottomTab;->mIconResId:I

    iput-object v1, p0, Lmiuix/navigator/BottomTab;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lmiuix/navigator/BottomTab;->mIconTintList:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Lmiuix/navigator/BottomTab;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-object v1, p0, Lmiuix/navigator/BottomTab;->mContentDescription:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/BottomTab;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getIconDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/BottomTab;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconResId()I
    .registers 2

    iget v0, p0, Lmiuix/navigator/BottomTab;->mIconResId:I

    return v0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/BottomTab;->mIconTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/BottomTab;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getNavigatorInfo()Lmiuix/navigator/navigatorinfo/NavigatorInfo;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/BottomTab;->mNavigatorInfo:Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/BottomTab;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleResId()I
    .registers 2

    iget v0, p0, Lmiuix/navigator/BottomTab;->mTitleResId:I

    return v0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Lmiuix/navigator/BottomTab;
    .registers 2

    iput-object p1, p0, Lmiuix/navigator/BottomTab;->mContentDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setIcon(I)Lmiuix/navigator/BottomTab;
    .registers 2

    iput p1, p0, Lmiuix/navigator/BottomTab;->mIconResId:I

    const/4 p1, 0x0

    iput-object p1, p0, Lmiuix/navigator/BottomTab;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lmiuix/navigator/BottomTab;
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lmiuix/navigator/BottomTab;->mIconResId:I

    iput-object p1, p0, Lmiuix/navigator/BottomTab;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)Lmiuix/navigator/BottomTab;
    .registers 2

    iput-object p1, p0, Lmiuix/navigator/BottomTab;->mIconTintList:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Lmiuix/navigator/BottomTab;
    .registers 2

    iput-object p1, p0, Lmiuix/navigator/BottomTab;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object p0
.end method

.method public setNavigatorInfo(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V
    .registers 2

    iput-object p1, p0, Lmiuix/navigator/BottomTab;->mNavigatorInfo:Lmiuix/navigator/navigatorinfo/NavigatorInfo;

    return-void
.end method

.method public setTitle(I)V
    .registers 2

    iput p1, p0, Lmiuix/navigator/BottomTab;->mTitleResId:I

    const/4 p1, 0x0

    iput-object p1, p0, Lmiuix/navigator/BottomTab;->mTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lmiuix/navigator/BottomTab;->mTitleResId:I

    iput-object p1, p0, Lmiuix/navigator/BottomTab;->mTitle:Ljava/lang/CharSequence;

    return-void
.end method
