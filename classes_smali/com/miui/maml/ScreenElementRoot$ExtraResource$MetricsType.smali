.class final enum Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;
.super Ljava/lang/Enum;
.source "ScreenElementRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ScreenElementRoot$ExtraResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MetricsType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;

.field public static final enum DEN:Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;

.field public static final enum SW:Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;

.field public static final enum SW_DEN:Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    const-string v1, "DEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;->DEN:Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    new-instance v1, Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    const-string v3, "SW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;->SW:Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    new-instance v3, Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    const-string v5, "SW_DEN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;->SW_DEN:Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;->$VALUES:[Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;
    .registers 2

    const-class v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    return-object p0
.end method

.method public static values()[Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;
    .registers 1

    sget-object v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;->$VALUES:[Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    invoke-virtual {v0}, [Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    return-object v0
.end method
