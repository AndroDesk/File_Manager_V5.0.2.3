.class public abstract Lcom/miui/maml/ActionCommand$PropertyCommand;
.super Lcom/miui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PropertyCommand"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public mTargetElement:Lcom/miui/maml/elements/ScreenElement;

.field private mTargetObj:Lcom/miui/maml/util/Variable;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lcom/miui/maml/util/Variable;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/ActionCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;)V

    .line 4
    iput-object p2, p0, Lcom/miui/maml/ActionCommand$PropertyCommand;->mTargetObj:Lcom/miui/maml/util/Variable;

    .line 6
    return-void
.end method

.method public static create(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/ActionCommand$PropertyCommand;
    .registers 5

    .line 1
    new-instance v0, Lcom/miui/maml/util/Variable;

    .line 3
    invoke-direct {v0, p1}, Lcom/miui/maml/util/Variable;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lcom/miui/maml/util/Variable;->getPropertyName()Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    const-string v1, "visibility"

    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_17

    .line 18
    new-instance p1, Lcom/miui/maml/ActionCommand$VisibilityProperty;

    .line 20
    invoke-direct {p1, p0, v0, p2}, Lcom/miui/maml/ActionCommand$VisibilityProperty;-><init>(Lcom/miui/maml/elements/ScreenElement;Lcom/miui/maml/util/Variable;Ljava/lang/String;)V

    .line 23
    return-object p1

    .line 24
    :cond_17
    invoke-virtual {v0}, Lcom/miui/maml/util/Variable;->getPropertyName()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    const-string v1, "animation"

    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_29

    .line 36
    new-instance p1, Lcom/miui/maml/ActionCommand$AnimationProperty;

    .line 38
    invoke-direct {p1, p0, v0, p2}, Lcom/miui/maml/ActionCommand$AnimationProperty;-><init>(Lcom/miui/maml/elements/ScreenElement;Lcom/miui/maml/util/Variable;Ljava/lang/String;)V

    .line 41
    return-object p1

    .line 42
    :cond_29
    const/4 p0, 0x0

    .line 43
    return-object p0
.end method


# virtual methods
.method public init()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/miui/maml/ActionCommand;->init()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$PropertyCommand;->mTargetObj:Lcom/miui/maml/util/Variable;

    .line 6
    if-nez v0, :cond_8

    .line 8
    return-void

    .line 9
    :cond_8
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$PropertyCommand;->mTargetElement:Lcom/miui/maml/elements/ScreenElement;

    .line 11
    if-nez v0, :cond_39

    .line 13
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$PropertyCommand;->mTargetObj:Lcom/miui/maml/util/Variable;

    .line 19
    invoke-virtual {v1}, Lcom/miui/maml/util/Variable;->getObjName()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$PropertyCommand;->mTargetElement:Lcom/miui/maml/elements/ScreenElement;

    .line 29
    if-nez v0, :cond_39

    .line 31
    const-string v0, "could not find PropertyCommand target, name: "

    .line 33
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$PropertyCommand;->mTargetObj:Lcom/miui/maml/util/Variable;

    .line 39
    invoke-virtual {v1}, Lcom/miui/maml/util/Variable;->getObjName()Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    const-string v1, "ActionCommand"

    .line 52
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$PropertyCommand;->mTargetObj:Lcom/miui/maml/util/Variable;

    .line 58
    :cond_39
    return-void
.end method

.method public perform()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$PropertyCommand;->mTargetElement:Lcom/miui/maml/elements/ScreenElement;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->doPerform()V

    .line 9
    return-void
.end method
