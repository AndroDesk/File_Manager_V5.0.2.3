.class Lcom/miui/maml/ActionCommand$OnOffCommandHelper;
.super Ljava/lang/Object;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnOffCommandHelper"
.end annotation


# instance fields
.field public mIsOn:Z

.field public mIsToggle:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "toggle"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-eqz v0, :cond_f

    .line 13
    iput-boolean v1, p0, Lcom/miui/maml/ActionCommand$OnOffCommandHelper;->mIsToggle:Z

    .line 15
    goto :goto_25

    .line 16
    :cond_f
    const-string v0, "on"

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1a

    .line 24
    iput-boolean v1, p0, Lcom/miui/maml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    .line 26
    goto :goto_25

    .line 27
    :cond_1a
    const-string v0, "off"

    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_25

    .line 35
    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lcom/miui/maml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    .line 38
    :cond_25
    :goto_25
    return-void
.end method
