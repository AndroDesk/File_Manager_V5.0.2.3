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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "toggle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    iput-boolean v1, p0, Lcom/miui/maml/ActionCommand$OnOffCommandHelper;->mIsToggle:Z

    goto :goto_25

    :cond_f
    const-string v0, "on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iput-boolean v1, p0, Lcom/miui/maml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    goto :goto_25

    :cond_1a
    const-string v0, "off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_25

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/maml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    :cond_25
    :goto_25
    return-void
.end method