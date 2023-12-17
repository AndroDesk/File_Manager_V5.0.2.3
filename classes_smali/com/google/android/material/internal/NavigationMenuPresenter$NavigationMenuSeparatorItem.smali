.class Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;
.super Ljava/lang/Object;
.source "NavigationMenuPresenter.java"

# interfaces
.implements Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/NavigationMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NavigationMenuSeparatorItem"
.end annotation


# instance fields
.field private final paddingBottom:I

.field private final paddingTop:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;->paddingTop:I

    .line 6
    iput p2, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;->paddingBottom:I

    .line 8
    return-void
.end method


# virtual methods
.method public getPaddingBottom()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;->paddingBottom:I

    .line 3
    return v0
.end method

.method public getPaddingTop()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;->paddingTop:I

    .line 3
    return v0
.end method
