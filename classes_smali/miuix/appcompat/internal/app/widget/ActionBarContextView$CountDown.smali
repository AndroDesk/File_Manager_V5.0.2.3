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
.method public constructor <init>(ILmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown$CountDownCompleteListener;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;->mCount:I

    .line 6
    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;->mCountDownCompleteListener:Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown$CountDownCompleteListener;

    .line 8
    return-void
.end method


# virtual methods
.method public countDown()V
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;->mCount:I

    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 5
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;->mCount:I

    .line 7
    if-nez v0, :cond_d

    .line 9
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown;->mCountDownCompleteListener:Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown$CountDownCompleteListener;

    .line 11
    invoke-interface {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$CountDown$CountDownCompleteListener;->onCountDownComplete()V

    .line 14
    :cond_d
    return-void
.end method
