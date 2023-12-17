.class Lmiuix/internal/widget/ListPopup$ContentSize;
.super Ljava/lang/Object;
.source "ListPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/internal/widget/ListPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentSize"
.end annotation


# instance fields
.field public mHasContentWidth:Z

.field public mHeight:I

.field public mWidth:I


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/internal/widget/ListPopup$1;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lmiuix/internal/widget/ListPopup$ContentSize;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public updateWidth(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/internal/widget/ListPopup$ContentSize;->mWidth:I

    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lmiuix/internal/widget/ListPopup$ContentSize;->mHasContentWidth:Z

    .line 6
    return-void
.end method
