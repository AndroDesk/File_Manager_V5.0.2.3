.class Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;
.super Ljava/lang/Object;
.source "ActionBarContextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarContextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CountDown"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown$CountDownCompleteListener;
    }
.end annotation


# instance fields
.field private mCount:I

.field private mCountDownCompleteListener:Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown$CountDownCompleteListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(ILmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown$CountDownCompleteListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;->mCount:I

    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;->mCountDownCompleteListener:Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown$CountDownCompleteListener;

    return-void
.end method


# virtual methods
.method public countDown()V
    .registers 2

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;->mCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;->mCount:I

    if-nez v0, :cond_d

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;->mCountDownCompleteListener:Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown$CountDownCompleteListener;

    invoke-interface {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown$CountDownCompleteListener;->onCountDownComplete()V

    :cond_d
    return-void
.end method
