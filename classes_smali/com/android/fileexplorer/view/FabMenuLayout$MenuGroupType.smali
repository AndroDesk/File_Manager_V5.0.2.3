.class public final enum Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;
.super Ljava/lang/Enum;
.source "FabMenuLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/view/FabMenuLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MenuGroupType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;

.field public static final enum Doc:Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;

.field public static final enum Sort:Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;

.field public static final enum ViewType:Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;

    const-string v1, "Doc"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;->Doc:Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;

    new-instance v1, Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;

    const-string v3, "Sort"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;->Sort:Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;

    new-instance v3, Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;

    const-string v5, "ViewType"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;->ViewType:Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;->$VALUES:[Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;
    .registers 2

    const-class v0, Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;

    return-object p0
.end method

.method public static values()[Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;
    .registers 1

    sget-object v0, Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;->$VALUES:[Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;

    invoke-virtual {v0}, [Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;

    return-object v0
.end method
