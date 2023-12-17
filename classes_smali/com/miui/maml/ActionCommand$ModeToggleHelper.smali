.class Lcom/miui/maml/ActionCommand$ModeToggleHelper;
.super Ljava/lang/Object;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModeToggleHelper"
.end annotation


# instance fields
.field private mCurModeIndex:I

.field private mCurToggleIndex:I

.field private mModeIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mModeNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mToggle:Z

.field private mToggleAll:Z

.field private mToggleModes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mModeNames:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mModeIds:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mToggleModes:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/miui/maml/ActionCommand$1;)V
    .registers 2

    .line 5
    invoke-direct {p0}, Lcom/miui/maml/ActionCommand$ModeToggleHelper;-><init>()V

    return-void
.end method

.method private findMode(Ljava/lang/String;)I
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mModeNames:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1b

    .line 10
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mModeNames:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Ljava/lang/String;

    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_18

    .line 24
    return v0

    .line 25
    :cond_18
    add-int/lit8 v0, v0, 0x1

    .line 27
    goto :goto_1

    .line 28
    :cond_1b
    const/4 p1, -0x1

    .line 29
    return p1
.end method


# virtual methods
.method public addMode(Ljava/lang/String;I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mModeNames:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mModeIds:Ljava/util/ArrayList;

    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    return-void
.end method

.method public build(Ljava/lang/String;)Z
    .registers 7

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->findMode(Ljava/lang/String;)I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ltz v0, :cond_a

    .line 8
    iput v0, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mCurModeIndex:I

    .line 10
    return v1

    .line 11
    :cond_a
    const-string v0, "toggle"

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_15

    .line 19
    iput-boolean v1, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mToggleAll:Z

    .line 21
    return v1

    .line 22
    :cond_15
    const-string v0, ","

    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    const/4 v0, 0x0

    .line 29
    move v2, v0

    .line 30
    :goto_1d
    array-length v3, p1

    .line 31
    if-ge v2, v3, :cond_35

    .line 33
    aget-object v3, p1, v2

    .line 35
    invoke-direct {p0, v3}, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->findMode(Ljava/lang/String;)I

    .line 38
    move-result v3

    .line 39
    if-gez v3, :cond_29

    .line 41
    return v0

    .line 42
    :cond_29
    iget-object v4, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mToggleModes:Ljava/util/ArrayList;

    .line 44
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    add-int/lit8 v2, v2, 0x1

    .line 53
    goto :goto_1d

    .line 54
    :cond_35
    iput-boolean v1, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mToggle:Z

    .line 56
    return v1
.end method

.method public click()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mToggle:Z

    .line 3
    if-eqz v0, :cond_22

    .line 5
    iget v0, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mCurToggleIndex:I

    .line 7
    add-int/lit8 v0, v0, 0x1

    .line 9
    iput v0, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mCurToggleIndex:I

    .line 11
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mToggleModes:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 16
    move-result v1

    .line 17
    rem-int/2addr v0, v1

    .line 18
    iput v0, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mCurToggleIndex:I

    .line 20
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mToggleModes:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ljava/lang/Integer;

    .line 28
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 31
    move-result v0

    .line 32
    iput v0, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mCurModeIndex:I

    .line 34
    goto :goto_35

    .line 35
    :cond_22
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mToggleAll:Z

    .line 37
    if-eqz v0, :cond_35

    .line 39
    iget v0, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mCurModeIndex:I

    .line 41
    add-int/lit8 v0, v0, 0x1

    .line 43
    iput v0, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mCurModeIndex:I

    .line 45
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mModeNames:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 50
    move-result v1

    .line 51
    rem-int/2addr v0, v1

    .line 52
    iput v0, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mCurModeIndex:I

    .line 54
    :cond_35
    :goto_35
    return-void
.end method

.method public getModeId()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mModeIds:Ljava/util/ArrayList;

    .line 3
    iget v1, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mCurModeIndex:I

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Integer;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public getModeName()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mModeNames:Ljava/util/ArrayList;

    .line 3
    iget v1, p0, Lcom/miui/maml/ActionCommand$ModeToggleHelper;->mCurModeIndex:I

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/String;

    .line 11
    return-object v0
.end method
