.class Lmiuix/util/HapticFeedbackCompat$1;
.super Ljava/lang/Object;
.source "HapticFeedbackCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/util/HapticFeedbackCompat;->performHapticFeedbackAsync(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/util/HapticFeedbackCompat;

.field public final synthetic val$effectId:I


# direct methods
.method public constructor <init>(Lmiuix/util/HapticFeedbackCompat;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/util/HapticFeedbackCompat$1;->this$0:Lmiuix/util/HapticFeedbackCompat;

    .line 3
    iput p2, p0, Lmiuix/util/HapticFeedbackCompat$1;->val$effectId:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat$1;->this$0:Lmiuix/util/HapticFeedbackCompat;

    .line 3
    iget v1, p0, Lmiuix/util/HapticFeedbackCompat$1;->val$effectId:I

    .line 5
    invoke-virtual {v0, v1}, Lmiuix/util/HapticFeedbackCompat;->performHapticFeedback(I)Z

    .line 8
    return-void
.end method
