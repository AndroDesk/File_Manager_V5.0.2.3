.class public Lcom/miui/maml/data/FunctionsLoader;
.super Ljava/lang/Object;
.source "FunctionsLoader.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load()V
    .registers 0

    .line 1
    invoke-static {}, Lcom/miui/maml/data/BaseFunctions;->load()V

    .line 4
    invoke-static {}, Lcom/miui/maml/data/StringFunctions;->load()V

    .line 7
    invoke-static {}, Lcom/miui/maml/data/FormatFunctions;->load()V

    .line 10
    return-void
.end method
