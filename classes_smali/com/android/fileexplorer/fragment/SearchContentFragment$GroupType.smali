.class public final enum Lcom/android/fileexplorer/fragment/SearchContentFragment$GroupType;
.super Ljava/lang/Enum;
.source "SearchContentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/fragment/SearchContentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GroupType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/fileexplorer/fragment/SearchContentFragment$GroupType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/fileexplorer/fragment/SearchContentFragment$GroupType;

.field public static final enum Body:Lcom/android/fileexplorer/fragment/SearchContentFragment$GroupType;

.field public static final enum Foot:Lcom/android/fileexplorer/fragment/SearchContentFragment$GroupType;

.field public static final enum Head:Lcom/android/fileexplorer/fragment/SearchContentFragment$GroupType;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/android/fileexplorer/fragment/SearchContentFragment$GroupType;

    const-string v1, "Head"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/fragment/SearchContentFragment$GroupType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/fileexplorer/fragment/SearchContentFragment$GroupType;->Head:Lcom/android/fileexplorer/fragment/SearchContentFragment$GroupType;

    new-instance v1, Lcom/android/fileexplorer/fragment/SearchContentFragment$GroupType;

    const-string v3, "Body"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/fileexplorer/fragment/SearchContentFragment$GroupType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/fileexplorer/fragment/SearchContentFragment$GroupType;->Body:Lcom/android/fileexplorer/fragment/SearchContentFragment$GroupType;

    new-instance v3, Lcom/android/fileexplorer/fragment/SearchContentFragment$GroupType;

    const-string v5, "Foot"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/fileexplorer/fragment/SearchContentFragment$GroupType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/fileexplorer/fragment/SearchContentFragment$GroupType;->Foot:Lcom/android/fileexplorer/fragment/SearchContentFragment$GroupType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/android/fileexplorer/fragment/SearchContentFragment$GroupType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/android/fileexplorer/fragment/SearchContentFragment$GroupType;->$VALUES:[Lcom/android/fileexplorer/fragment/SearchContentFragment$GroupType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/fileexplorer/fragment/SearchContentFragment$GroupType;
    .registers 2

    const-class v0, Lcom/android/fileexplorer/fragment/SearchContentFragment$GroupType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/fileexplorer/fragment/SearchContentFragment$GroupType;

    return-object p0
.end method

.method public static values()[Lcom/android/fileexplorer/fragment/SearchContentFragment$GroupType;
    .registers 1

    sget-object v0, Lcom/android/fileexplorer/fragment/SearchContentFragment$GroupType;->$VALUES:[Lcom/android/fileexplorer/fragment/SearchContentFragment$GroupType;

    invoke-virtual {v0}, [Lcom/android/fileexplorer/fragment/SearchContentFragment$GroupType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/fileexplorer/fragment/SearchContentFragment$GroupType;

    return-object v0
.end method
