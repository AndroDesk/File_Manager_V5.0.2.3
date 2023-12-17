.class Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;
.super Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;
.source "ScreenElementRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ScreenElementRoot$ExtraResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Resource"
.end annotation


# instance fields
.field public mPath:Ljava/lang/String;

.field public final synthetic this$0:Lcom/miui/maml/ScreenElementRoot$ExtraResource;


# direct methods
.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot$ExtraResource;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;->this$0:Lcom/miui/maml/ScreenElementRoot$ExtraResource;

    invoke-direct {p0, p1}, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;-><init>(Lcom/miui/maml/ScreenElementRoot$ExtraResource;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot$ExtraResource;Ljava/lang/String;Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V
    .registers 4

    .line 2
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;->this$0:Lcom/miui/maml/ScreenElementRoot$ExtraResource;

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;-><init>(Lcom/miui/maml/ScreenElementRoot$ExtraResource;Ljava/lang/String;Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    .line 4
    sget-object p1, Lcom/miui/maml/ScreenElementRoot$4;->$SwitchMap$com$miui$maml$ScreenElementRoot$ExtraResource$MetricsType:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_26

    const/4 p2, 0x2

    if-eq p1, p2, :cond_14

    goto :goto_37

    :cond_14
    const-string p1, "sw"

    .line 5
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 6
    iget p2, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;->mPath:Ljava/lang/String;

    goto :goto_37

    :cond_26
    const-string p1, "den"

    .line 7
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 8
    iget p2, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;->mPath:Ljava/lang/String;

    :goto_37
    return-void
.end method


# virtual methods
.method public onParseInfo([Ljava/lang/String;)V
    .registers 4

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x2

    .line 3
    if-gt v0, v1, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x1

    .line 8
    :goto_7
    aget-object p1, p1, v0

    .line 10
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;->mPath:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-super {p0}, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->toString()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, " path:"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object v1, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;->mPath:Ljava/lang/String;

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method
