.class public Lmiuix/navigator/draganddrop/DragStartFeedback;
.super Ljava/lang/Object;
.source "DragStartFeedback.java"


# instance fields
.field private mCanAccept:Z

.field private mCanInsert:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canAccept()Z
    .registers 2

    iget-boolean v0, p0, Lmiuix/navigator/draganddrop/DragStartFeedback;->mCanAccept:Z

    return v0
.end method

.method public canInsert()Z
    .registers 2

    iget-boolean v0, p0, Lmiuix/navigator/draganddrop/DragStartFeedback;->mCanInsert:Z

    return v0
.end method

.method public setCanAccept(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiuix/navigator/draganddrop/DragStartFeedback;->mCanAccept:Z

    return-void
.end method

.method public setCanInsert(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiuix/navigator/draganddrop/DragStartFeedback;->mCanInsert:Z

    return-void
.end method
