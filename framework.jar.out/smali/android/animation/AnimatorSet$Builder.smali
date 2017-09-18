.class public Landroid/animation/AnimatorSet$Builder;
.super Ljava/lang/Object;
.source "AnimatorSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Builder"
.end annotation


# instance fields
.field private mCurrentNode:Landroid/animation/AnimatorSet$Node;

.field final synthetic this$0:Landroid/animation/AnimatorSet;


# direct methods
.method constructor <init>(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V
    .locals 2
    .param p1, "this$0"    # Landroid/animation/AnimatorSet;
    .param p2, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 1174
    iput-object p1, p0, Landroid/animation/AnimatorSet$Builder;->this$0:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1175
    invoke-static {p1}, Landroid/animation/AnimatorSet;->-get0(Landroid/animation/AnimatorSet;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet$Node;

    iput-object v0, p0, Landroid/animation/AnimatorSet$Builder;->mCurrentNode:Landroid/animation/AnimatorSet$Node;

    .line 1176
    iget-object v0, p0, Landroid/animation/AnimatorSet$Builder;->mCurrentNode:Landroid/animation/AnimatorSet$Node;

    if-nez v0, :cond_0

    .line 1177
    new-instance v0, Landroid/animation/AnimatorSet$Node;

    invoke-direct {v0, p2}, Landroid/animation/AnimatorSet$Node;-><init>(Landroid/animation/Animator;)V

    iput-object v0, p0, Landroid/animation/AnimatorSet$Builder;->mCurrentNode:Landroid/animation/AnimatorSet$Node;

    .line 1178
    invoke-static {p1}, Landroid/animation/AnimatorSet;->-get0(Landroid/animation/AnimatorSet;)Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Landroid/animation/AnimatorSet$Builder;->mCurrentNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    invoke-static {p1}, Landroid/animation/AnimatorSet;->-get1(Landroid/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/animation/AnimatorSet$Builder;->mCurrentNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1174
    :cond_0
    return-void
.end method


# virtual methods
.method public after(J)Landroid/animation/AnimatorSet$Builder;
    .locals 3
    .param p1, "delay"    # J

    .prologue
    .line 1254
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1255
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1256
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1257
    return-object p0

    .line 1254
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;
    .locals 4
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 1232
    iget-object v2, p0, Landroid/animation/AnimatorSet$Builder;->this$0:Landroid/animation/AnimatorSet;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/animation/AnimatorSet;->-set1(Landroid/animation/AnimatorSet;Z)Z

    .line 1233
    iget-object v2, p0, Landroid/animation/AnimatorSet$Builder;->this$0:Landroid/animation/AnimatorSet;

    invoke-static {v2}, Landroid/animation/AnimatorSet;->-get0(Landroid/animation/AnimatorSet;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    .line 1234
    .local v1, "node":Landroid/animation/AnimatorSet$Node;
    if-nez v1, :cond_0

    .line 1235
    new-instance v1, Landroid/animation/AnimatorSet$Node;

    .end local v1    # "node":Landroid/animation/AnimatorSet$Node;
    invoke-direct {v1, p1}, Landroid/animation/AnimatorSet$Node;-><init>(Landroid/animation/Animator;)V

    .line 1236
    .restart local v1    # "node":Landroid/animation/AnimatorSet$Node;
    iget-object v2, p0, Landroid/animation/AnimatorSet$Builder;->this$0:Landroid/animation/AnimatorSet;

    invoke-static {v2}, Landroid/animation/AnimatorSet;->-get0(Landroid/animation/AnimatorSet;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1237
    iget-object v2, p0, Landroid/animation/AnimatorSet$Builder;->this$0:Landroid/animation/AnimatorSet;

    invoke-static {v2}, Landroid/animation/AnimatorSet;->-get1(Landroid/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1239
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet$Dependency;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/animation/AnimatorSet$Dependency;-><init>(Landroid/animation/AnimatorSet$Node;I)V

    .line 1240
    .local v0, "dependency":Landroid/animation/AnimatorSet$Dependency;
    iget-object v2, p0, Landroid/animation/AnimatorSet$Builder;->mCurrentNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Node;->addDependency(Landroid/animation/AnimatorSet$Dependency;)V

    .line 1241
    return-object p0
.end method

.method public before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;
    .locals 4
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 1211
    iget-object v2, p0, Landroid/animation/AnimatorSet$Builder;->this$0:Landroid/animation/AnimatorSet;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/animation/AnimatorSet;->-set1(Landroid/animation/AnimatorSet;Z)Z

    .line 1212
    iget-object v2, p0, Landroid/animation/AnimatorSet$Builder;->this$0:Landroid/animation/AnimatorSet;

    invoke-static {v2}, Landroid/animation/AnimatorSet;->-get0(Landroid/animation/AnimatorSet;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    .line 1213
    .local v1, "node":Landroid/animation/AnimatorSet$Node;
    if-nez v1, :cond_0

    .line 1214
    new-instance v1, Landroid/animation/AnimatorSet$Node;

    .end local v1    # "node":Landroid/animation/AnimatorSet$Node;
    invoke-direct {v1, p1}, Landroid/animation/AnimatorSet$Node;-><init>(Landroid/animation/Animator;)V

    .line 1215
    .restart local v1    # "node":Landroid/animation/AnimatorSet$Node;
    iget-object v2, p0, Landroid/animation/AnimatorSet$Builder;->this$0:Landroid/animation/AnimatorSet;

    invoke-static {v2}, Landroid/animation/AnimatorSet;->-get0(Landroid/animation/AnimatorSet;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    iget-object v2, p0, Landroid/animation/AnimatorSet$Builder;->this$0:Landroid/animation/AnimatorSet;

    invoke-static {v2}, Landroid/animation/AnimatorSet;->-get1(Landroid/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1218
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet$Dependency;

    iget-object v2, p0, Landroid/animation/AnimatorSet$Builder;->mCurrentNode:Landroid/animation/AnimatorSet$Node;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Landroid/animation/AnimatorSet$Dependency;-><init>(Landroid/animation/AnimatorSet$Node;I)V

    .line 1219
    .local v0, "dependency":Landroid/animation/AnimatorSet$Dependency;
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Node;->addDependency(Landroid/animation/AnimatorSet$Dependency;)V

    .line 1220
    return-object p0
.end method

.method public with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;
    .locals 4
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 1191
    iget-object v2, p0, Landroid/animation/AnimatorSet$Builder;->this$0:Landroid/animation/AnimatorSet;

    invoke-static {v2}, Landroid/animation/AnimatorSet;->-get0(Landroid/animation/AnimatorSet;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    .line 1192
    .local v1, "node":Landroid/animation/AnimatorSet$Node;
    if-nez v1, :cond_0

    .line 1193
    new-instance v1, Landroid/animation/AnimatorSet$Node;

    .end local v1    # "node":Landroid/animation/AnimatorSet$Node;
    invoke-direct {v1, p1}, Landroid/animation/AnimatorSet$Node;-><init>(Landroid/animation/Animator;)V

    .line 1194
    .restart local v1    # "node":Landroid/animation/AnimatorSet$Node;
    iget-object v2, p0, Landroid/animation/AnimatorSet$Builder;->this$0:Landroid/animation/AnimatorSet;

    invoke-static {v2}, Landroid/animation/AnimatorSet;->-get0(Landroid/animation/AnimatorSet;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    iget-object v2, p0, Landroid/animation/AnimatorSet$Builder;->this$0:Landroid/animation/AnimatorSet;

    invoke-static {v2}, Landroid/animation/AnimatorSet;->-get1(Landroid/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1197
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet$Dependency;

    iget-object v2, p0, Landroid/animation/AnimatorSet$Builder;->mCurrentNode:Landroid/animation/AnimatorSet$Node;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/animation/AnimatorSet$Dependency;-><init>(Landroid/animation/AnimatorSet$Node;I)V

    .line 1198
    .local v0, "dependency":Landroid/animation/AnimatorSet$Dependency;
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Node;->addDependency(Landroid/animation/AnimatorSet$Dependency;)V

    .line 1199
    return-object p0
.end method
