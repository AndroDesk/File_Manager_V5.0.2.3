.class Lmiuix/preference/DropDownPreference$3;
.super Ljava/lang/Object;
.source "DropDownPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/preference/DropDownPreference;->onBindViewHolder(Landroidx/preference/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/preference/DropDownPreference;


# direct methods
.method public constructor <init>(Lmiuix/preference/DropDownPreference;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/preference/DropDownPreference$3;->this$0:Lmiuix/preference/DropDownPreference;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/preference/DropDownPreference$3;->this$0:Lmiuix/preference/DropDownPreference;

    .line 3
    invoke-static {v0}, Lmiuix/preference/DropDownPreference;->access$400(Lmiuix/preference/DropDownPreference;)Lmiuix/appcompat/widget/Spinner;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lmiuix/preference/DropDownPreference$3;->this$0:Lmiuix/preference/DropDownPreference;

    .line 9
    invoke-static {v1}, Lmiuix/preference/DropDownPreference;->access$300(Lmiuix/preference/DropDownPreference;)Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 16
    return-void
.end method
