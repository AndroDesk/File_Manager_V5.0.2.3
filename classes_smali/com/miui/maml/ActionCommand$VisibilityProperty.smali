.class Lcom/miui/maml/ActionCommand$VisibilityProperty;
.super Lcom/miui/maml/ActionCommand$PropertyCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VisibilityProperty"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final PROPERTY_NAME:Ljava/lang/String; = "visibility"


# instance fields
.field private mIsShow:Z

.field private mIsToggle:Z


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lcom/miui/maml/util/Variable;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/maml/ActionCommand$PropertyCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lcom/miui/maml/util/Variable;Ljava/lang/String;)V

    .line 4
    const-string p1, "toggle"

    .line 6
    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 9
    move-result p1

    .line 10
    const/4 p2, 0x1

    .line 11
    if-eqz p1, :cond_f

    .line 13
    iput-boolean p2, p0, Lcom/miui/maml/ActionCommand$VisibilityProperty;->mIsToggle:Z

    .line 15
    goto :goto_25

    .line 16
    :cond_f
    const-string p1, "true"

    .line 18
    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_1a

    .line 24
    iput-boolean p2, p0, Lcom/miui/maml/ActionCommand$VisibilityProperty;->mIsShow:Z

    .line 26
    goto :goto_25

    .line 27
    :cond_1a
    const-string p1, "false"

    .line 29
    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_25

    .line 35
    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lcom/miui/maml/ActionCommand$VisibilityProperty;->mIsShow:Z

    .line 38
    :cond_25
    :goto_25
    return-void
.end method


# virtual methods
.method public doPerform()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$VisibilityProperty;->mIsToggle:Z

    .line 3
    if-eqz v0, :cond_10

    .line 5
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$PropertyCommand;->mTargetElement:Lcom/miui/maml/elements/ScreenElement;

    .line 7
    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    .line 10
    move-result v1

    .line 11
    xor-int/lit8 v1, v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/ScreenElement;->show(Z)V

    .line 16
    goto :goto_17

    .line 17
    :cond_10
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$PropertyCommand;->mTargetElement:Lcom/miui/maml/elements/ScreenElement;

    .line 19
    iget-boolean v1, p0, Lcom/miui/maml/ActionCommand$VisibilityProperty;->mIsShow:Z

    .line 21
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/ScreenElement;->show(Z)V

    .line 24
    :goto_17
    return-void
.end method
