.class Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;
.super Ljava/lang/Object;
.source "NavigationMenuPresenter.java"

# interfaces
.implements Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/navigator/navigation/internal/NavigationMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NavigationMenuSeparatorItem"
.end annotation


# instance fields
.field private final paddingBottom:I

.field private final paddingTop:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;->paddingTop:I

    iput p2, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;->paddingBottom:I

    return-void
.end method


# virtual methods
.method public getPaddingBottom()I
    .registers 2

    iget v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;->paddingBottom:I

    return v0
.end method

.method public getPaddingTop()I
    .registers 2

    iget v0, p0, Lmiuix/navigator/navigation/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;->paddingTop:I

    return v0
.end method
