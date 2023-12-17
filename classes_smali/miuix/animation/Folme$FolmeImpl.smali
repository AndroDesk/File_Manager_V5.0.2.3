.class Lmiuix/animation/Folme$FolmeImpl;
.super Ljava/lang/Object;
.source "Folme.java"

# interfaces
.implements Lmiuix/animation/IFolme;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/Folme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FolmeImpl"
.end annotation


# instance fields
.field private mBlink:Lmiuix/animation/IBlinkStyle;

.field private mHover:Lmiuix/animation/IHoverStyle;

.field private mState:Lmiuix/animation/IStateStyle;

.field private mTargets:[Lmiuix/animation/IAnimTarget;

.field private mTouch:Lmiuix/animation/ITouchStyle;

.field private mVisible:Lmiuix/animation/IVisibleStyle;


# direct methods
.method private varargs constructor <init>([Lmiuix/animation/IAnimTarget;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lmiuix/animation/Folme$FolmeImpl;->mTargets:[Lmiuix/animation/IAnimTarget;

    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Lmiuix/animation/Folme;->access$000(Z)V

    .line 5
    invoke-static {}, Lmiuix/animation/Folme;->access$100()V

    return-void
.end method

.method public synthetic constructor <init>([Lmiuix/animation/IAnimTarget;Lmiuix/animation/Folme$1;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lmiuix/animation/Folme$FolmeImpl;-><init>([Lmiuix/animation/IAnimTarget;)V

    return-void
.end method


# virtual methods
.method public blink()Lmiuix/animation/IBlinkStyle;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mBlink:Lmiuix/animation/IBlinkStyle;

    .line 3
    if-nez v0, :cond_d

    .line 5
    new-instance v0, Lmiuix/animation/controller/FolmeBlink;

    .line 7
    iget-object v1, p0, Lmiuix/animation/Folme$FolmeImpl;->mTargets:[Lmiuix/animation/IAnimTarget;

    .line 9
    invoke-direct {v0, v1}, Lmiuix/animation/controller/FolmeBlink;-><init>([Lmiuix/animation/IAnimTarget;)V

    .line 12
    iput-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mBlink:Lmiuix/animation/IBlinkStyle;

    .line 14
    :cond_d
    iget-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mBlink:Lmiuix/animation/IBlinkStyle;

    .line 16
    return-object v0
.end method

.method public clean()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mTouch:Lmiuix/animation/ITouchStyle;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0}, Lmiuix/animation/IStateContainer;->clean()V

    .line 8
    :cond_7
    iget-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mVisible:Lmiuix/animation/IVisibleStyle;

    .line 10
    if-eqz v0, :cond_e

    .line 12
    invoke-interface {v0}, Lmiuix/animation/IStateContainer;->clean()V

    .line 15
    :cond_e
    iget-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mState:Lmiuix/animation/IStateStyle;

    .line 17
    if-eqz v0, :cond_15

    .line 19
    invoke-interface {v0}, Lmiuix/animation/IStateContainer;->clean()V

    .line 22
    :cond_15
    iget-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mHover:Lmiuix/animation/IHoverStyle;

    .line 24
    if-eqz v0, :cond_1c

    .line 26
    invoke-interface {v0}, Lmiuix/animation/IStateContainer;->clean()V

    .line 29
    :cond_1c
    return-void
.end method

.method public end()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mTouch:Lmiuix/animation/ITouchStyle;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_a

    .line 6
    new-array v2, v1, [Ljava/lang/Object;

    .line 8
    invoke-interface {v0, v2}, Lmiuix/animation/ICancelableStyle;->end([Ljava/lang/Object;)V

    .line 11
    :cond_a
    iget-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mVisible:Lmiuix/animation/IVisibleStyle;

    .line 13
    if-eqz v0, :cond_13

    .line 15
    new-array v2, v1, [Ljava/lang/Object;

    .line 17
    invoke-interface {v0, v2}, Lmiuix/animation/ICancelableStyle;->end([Ljava/lang/Object;)V

    .line 20
    :cond_13
    iget-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mState:Lmiuix/animation/IStateStyle;

    .line 22
    if-eqz v0, :cond_1c

    .line 24
    new-array v2, v1, [Ljava/lang/Object;

    .line 26
    invoke-interface {v0, v2}, Lmiuix/animation/ICancelableStyle;->end([Ljava/lang/Object;)V

    .line 29
    :cond_1c
    iget-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mHover:Lmiuix/animation/IHoverStyle;

    .line 31
    if-eqz v0, :cond_25

    .line 33
    new-array v1, v1, [Ljava/lang/Object;

    .line 35
    invoke-interface {v0, v1}, Lmiuix/animation/ICancelableStyle;->end([Ljava/lang/Object;)V

    .line 38
    :cond_25
    return-void
.end method

.method public hover()Lmiuix/animation/IHoverStyle;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mHover:Lmiuix/animation/IHoverStyle;

    .line 3
    if-nez v0, :cond_d

    .line 5
    new-instance v0, Lmiuix/animation/controller/FolmeHover;

    .line 7
    iget-object v1, p0, Lmiuix/animation/Folme$FolmeImpl;->mTargets:[Lmiuix/animation/IAnimTarget;

    .line 9
    invoke-direct {v0, v1}, Lmiuix/animation/controller/FolmeHover;-><init>([Lmiuix/animation/IAnimTarget;)V

    .line 12
    iput-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mHover:Lmiuix/animation/IHoverStyle;

    .line 14
    :cond_d
    iget-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mHover:Lmiuix/animation/IHoverStyle;

    .line 16
    return-object v0
.end method

.method public state()Lmiuix/animation/IStateStyle;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mState:Lmiuix/animation/IStateStyle;

    .line 3
    if-nez v0, :cond_c

    .line 5
    iget-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mTargets:[Lmiuix/animation/IAnimTarget;

    .line 7
    invoke-static {v0}, Lmiuix/animation/controller/StateComposer;->composeStyle([Lmiuix/animation/IAnimTarget;)Lmiuix/animation/controller/IFolmeStateStyle;

    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mState:Lmiuix/animation/IStateStyle;

    .line 13
    :cond_c
    iget-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mState:Lmiuix/animation/IStateStyle;

    .line 15
    return-object v0
.end method

.method public touch()Lmiuix/animation/ITouchStyle;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mTouch:Lmiuix/animation/ITouchStyle;

    .line 3
    if-nez v0, :cond_15

    .line 5
    new-instance v0, Lmiuix/animation/controller/FolmeTouch;

    .line 7
    iget-object v1, p0, Lmiuix/animation/Folme$FolmeImpl;->mTargets:[Lmiuix/animation/IAnimTarget;

    .line 9
    invoke-direct {v0, v1}, Lmiuix/animation/controller/FolmeTouch;-><init>([Lmiuix/animation/IAnimTarget;)V

    .line 12
    new-instance v1, Lmiuix/animation/controller/FolmeFont;

    .line 14
    invoke-direct {v1}, Lmiuix/animation/controller/FolmeFont;-><init>()V

    .line 17
    invoke-virtual {v0, v1}, Lmiuix/animation/controller/FolmeTouch;->setFontStyle(Lmiuix/animation/controller/FolmeFont;)V

    .line 20
    iput-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mTouch:Lmiuix/animation/ITouchStyle;

    .line 22
    :cond_15
    iget-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mTouch:Lmiuix/animation/ITouchStyle;

    .line 24
    return-object v0
.end method

.method public visible()Lmiuix/animation/IVisibleStyle;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mVisible:Lmiuix/animation/IVisibleStyle;

    .line 3
    if-nez v0, :cond_d

    .line 5
    new-instance v0, Lmiuix/animation/controller/FolmeVisible;

    .line 7
    iget-object v1, p0, Lmiuix/animation/Folme$FolmeImpl;->mTargets:[Lmiuix/animation/IAnimTarget;

    .line 9
    invoke-direct {v0, v1}, Lmiuix/animation/controller/FolmeVisible;-><init>([Lmiuix/animation/IAnimTarget;)V

    .line 12
    iput-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mVisible:Lmiuix/animation/IVisibleStyle;

    .line 14
    :cond_d
    iget-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mVisible:Lmiuix/animation/IVisibleStyle;

    .line 16
    return-object v0
.end method
